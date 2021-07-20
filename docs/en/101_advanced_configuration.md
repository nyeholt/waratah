# Advanced Configuration

## Template overrides

You can override templates in the standard Silverstripe way by providing `SSViewer` a theme with higher priority in your project configuration:

```yaml
SilverStripe\View\SSViewer:
  themes:
    - 'me/some-module:my-specific-theme'
    - 'nswdpc/waratah:nswds'
    - '$default'
```

## Different build location

If you want to go further and are providing your own theme build, you can configure a different theme target in your project configuration Yaml:

```yaml
NSWDPC\Waratah\Models\DesignSystemConfiguration:
  vendor: 'me'
  module: 'some-module'
  theme: 'my-specific-theme'
```

The system will look for app.js and app.css in `vendor/me/some-module/themes/my-specific-theme/app/frontend/dist`

## Even more advanced configuration:
 
Ignore all asset and requirement loading using `frontend_provided: true`. It's assumed you are providing your own method of delivering the built NSW Design System assets.

```yaml
NSWDPC\Waratah\Models\DesignSystemConfiguration:
  frontend_provided: true
```
