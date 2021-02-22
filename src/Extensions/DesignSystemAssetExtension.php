<?php

namespace NSWDPC\Waratah\Extensions;

use NSWDPC\Waratah\Models\Configuration;
use SilverStripe\Control\Director;
use SilverStripe\Core\Extension;
use SilverStripe\Core\Injector\Injector;
use SilverStripe\Core\Manifest\ResourceURLGenerator;
use SilverStripe\Versioned\Versioned;
use SilverStripe\View\ArrayData;
use SilverStripe\View\Requirements;
use SilverStripe\View\ThemeResourceLoader;
use SilverStripe\View\SSViewer;

/**
 * Provide NSW Design System asset requirement functionality
 * @author James
 */
class DesignSystemAssetExtension extends Extension {

    protected $frontend_provided = false;
    protected $module = "";
    protected $theme = "";

    public function onAfterInit()
    {
        // if(!$this->frontend_provided) {  load base DS }
        $this->bootstrapDesignSystem();
    }

    /**
     * Bootstrap / init the design system
     */
    protected function bootstrapDesignSystem() : void {
        // Bootstrap the NSW Design System
        $script = <<<JS
try {
    (function(e){e.className=e.className.replace(/\bno-js\b/,'js')})(document.documentElement);
    window.NSW.initSite();
} catch (e) {
    console.warn(e);
}
JS;
        Requirements::customScript($script, "bootstrapDesignSystem");
    }

    /**
     * Provide the current SVG sprite from the theme, called within the template
     * Note to load this as a relative path for a frontend asset:
     * <code>
     * Injector::inst()->get(ResourceURLGenerator::class)
     *             ->setNonceStyle(null)// do not add a ?m=
     *             ->urlForResource( $sprite )
     * </code>
     * @return string
     */
    public function SVGSprite($inline = false) {
        try {

            if($inline) {

                $sprite = ThemeResourceLoader::inst()->findThemedResource(
                            "app/frontend/dist/assets/svg/sprite.svg",
                            SSViewer::get_themes()
                );
                if(!$sprite) {
                    throw new \Exception("No sprite found");
                }

                $path = Director::getAbsFile($sprite);
                if(!file_exists($path)) {
                    throw new \Exception("Sprite not found");
                }

                $dom = new \DOMDocument();
                $contents = $dom->loadXML( file_get_contents( $path ) );
                $html = trim($dom->saveHTML());
                if(!$html) {
                    return false;
                }

                Requirements::customCSS(
<<<CSS
.spritey {
    position: absolute;
    width: 0;
    height: 0;
    overflow: hidden;
}
CSS
                );
                return ArrayData::create([
                    'SVGSprite' => $html
                ])->renderWith('DigitalNSW/DesignSystem/SVGSprite');

            } else {

                $sprite = ThemeResourceLoader::inst()->findThemedResource(
                            "app/frontend/dist/assets/svg/sprite.svg",
                            SSViewer::get_themes()
                );
                if(!$sprite) {
                    throw new \Exception("No sprite found");
                }

                $url = Injector::inst()->get(ResourceURLGenerator::class)
                        ->urlForResource( $sprite );

                // XHR method
                Requirements::customScript(
<<<JAVASCRIPT
var svgAjax = new XMLHttpRequest();
svgAjax.open("GET", "{$url}", true);
svgAjax.send();
svgAjax.onload = function(e) {
  var fragment = document.createRange().createContextualFragment(svgAjax.responseText);
  var svg = fragment.querySelector('svg')
  svg.setAttribute('aria-hidden', true);
  svg.style.cssText = 'position: absolute; width: 0; height: 0; overflow: hidden;'
  document.body.insertBefore(fragment, document.body.childNodes[0]);
};
JAVASCRIPT
                );
            }
        } catch (\Exception $e) {
            //noop
        }
        return "";
    }
}
