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

    protected $module = "nswdpc/silverstripe-nsw-design-system";
    protected $theme = "nswds";

    public function onAfterInit()
    {
        // ensure JS is at the bottom
        Requirements::set_force_js_to_bottom(true);

        // Block modules providing these
        Requirements::block("//code.jquery.com/jquery-3.3.1.min.js");
        Requirements::block("//code.jquery.com/jquery-3.4.1.min.js");
        Requirements::block('silverstripe/userforms:client/dist/styles/userforms.css');

        Requirements::css("https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,400;0,600;1,400;1,600&display=swap");
        Requirements::css("https://fonts.googleapis.com/icon?family=Material+Icons");
        Requirements::css("{$this->module}:themes/{$this->theme}/app/frontend/dist/css/main.css");

        Requirements::javascript(
            "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js",
            [
                "integrity" => "sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==",
                "crossorigin" => "anonymous"
            ]
        );

        Requirements::javascript("{$this->module}:themes/{$this->theme}/app/frontend/dist/js/main.js");

    }
}
