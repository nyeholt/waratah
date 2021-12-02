<?php

namespace NSWDPC\Waratah\Models;

use SilverStripe\Core\Config\Configurable;
use SilverStripe\View\TemplateGlobalProvider;

/**
 *
 * This is the configuration model for the NSW Design System integration provided by NSWDPC
 *
 * By default the DesignSystemAssetExtension will use the configuration values below
 * To override these in a project, for instance if your website is providing its own
 * app.js and app.css, modify the below to update the vendor/module and theme values
 * as required
 *
 * For example if you override the values to nswdpc/my-module and the them to my-theme:
 *
 * app.js will be picked up from _resources/vendor/nswdpc/my-module/themes/my-theme/app/frontend/dist/javascript/app.js
 * app.css will be picked up from _resources/vendor/nswdpc/my-module/themes/my-theme/app/frontend/dist/css/app.css
 *
 * If you set vendor and module to null, it's assumed that the path will be to a theme rather than vendor module:

 * app.js will be picked up from _resources/themes/my-theme/app/frontend/dist/javascript/app.js
 * app.css will be picked up from _resources/themes/my-theme/app/frontend/dist/css/app.css
 *
 * /dist files are located in the path app/frontend
 *
 * Your project must expose `themes/my-theme/app/frontend/dist` in composer.json:
 *
 * extra : {
 *   "expose": [
 *     "themes/my-theme/client/dist"
 *   ]
 * }
 *
 * Run `composer vendor-expose` to expose that path under public/_resources
 *
 * See DesignSystemAssetExtension getAsset() method for implementation
 *
 * If you ship a project with frontend_provided = true then it's expected that you have taken complete
 * control over frontend requirements and have injected  your own Extension over DesignSystemAssetExtension
 *
 *
 * @author James
 *
 */
class DesignSystemConfiguration implements TemplateGlobalProvider {

    use Configurable;

    /**
     * @var bool
     */
    private static $frontend_provided = false;

    /**
     * @var string
     */
    private static $vendor = "nswdpc";

    /**
     * @var string
     */
    private static $module = "waratah";

    /**
     * @var string
     */
    private static $theme = "nswds";

    /**
     * @var string
     * Add spacing classes eg. "nsw-p-top-... nsw-p-bottom-..."
     * if required to supporting components
     */
    private static $spacing_class = "";

    /**
     * @var string
     * The class to be used on element sections ->for landing pages<-
     * In other contexts,
     */
    private static $element_section_class = "wrth-section nsw-section";

    /*
     * @var float
     * This is a fun way to define some branding options in code
     */
    private static $branding_version = 3.0;

    /**
     * @var string
     * Co-Branding configuration, by default this is off
     * Applicable values are '','vertical' or 'horizontal'
     */
    private static $co_branding = '';

    /**
     * @var array brand options
     * https://nswdesignsystem.surge.sh/styles/colour/index.html
     */
    private static $colour_brand_options = [
        'dark' => 'Brand Dark',
        'light' => 'Brand Light',
        'supplementary' => 'Brand supplementary',
        'accent' => 'Brand Accent'
    ];

    /**
     * @var array button branding options
     * https://nswdesignsystem.surge.sh/components/card/index.html
     */
    private static $colour_cardbrand_options = [
        'dark' => 'Brand Dark',
        'light' => 'Brand Light'
    ];

    /**
     * @var array card branding options
     * https://nswdesignsystem.surge.sh/components/button/index.html
     */
    private static $colour_buttonstate_options = [
        'dark' => 'Brand Dark',
        'dark-outline' => 'Brand Dark Outline',
        'light' => 'Brand Light',
        'light-outline' => 'Brand Light Outline',
        'white' => 'White',
        'danger' => 'Danger'
    ];

    /**
     * @var array section options
     * https://nswdesignsystem.surge.sh/styles/section/index.html
     */
    private static $colour_section_options = [
        'dark' => 'Brand Dark',
        'light' => 'Brand Light',
        'supplementary' => 'Brand supplementary',
        'black' => 'Brand Black',
        'white' => 'Brand White',
        'off-white' => 'Brand Off White',
        'grey-01' => 'Grey 01',
        'grey-02' => 'Grey 02',
        'grey-03' => 'Grey 03',
        'grey-04' => 'Grey 04',
        // 2.13 options (legacy)
        'light-10' => 'Light 10 (legacy)' ,
        'light-20' => 'Light 20 (legacy)',
        'light-40' => 'Light 40 (legacy)',
    ];

    /**
     * Return the configured spacing class, used to implement consistent spacing in a project
     */
    public static function get_spacing_class() : string {
        return self::config()->get('spacing_class');
    }

    /**
     * Return the configured element section class for
     */
    public static function get_element_section_class() : string {
        return self::config()->get('element_section_class');
    }

    /**
     * Returns an array of strings of the method names of methods on the call that should be exposed
     * as global variables in the templates.
     *
     * @return array
     */
    public static function get_template_global_variables()
    {
        return [
            'Waratah_CoBrand' => 'waratah_cobrand',
            'Waratah_BrandVersion' => 'waratah_brandversion',
            'SpacingClass' => 'get_spacing_class',
            'ElementSectionClass' => 'get_element_section_class'
        ];
    }

    /**
     * Waratah co brand value
     * @return string
     */
    public static function waratah_cobrand()
    {
        return self::config()->get('co_branding');
    }

    /**
     * Waratah branding version
     * @return int
     */
    public static function waratah_brandversion()
    {
        return self::config()->get('branding_version');
    }
}
