<?php

namespace NSWDPC\Waratah\Models;

use SilverStripe\Core\Config\Configurable;

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
class DesignSystemConfiguration {

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
}
