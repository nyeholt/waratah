# Branding

The module supports branding and co-branding as set by the [NSW Government branding guidelines](https://digitalnsw.github.io/nsw-design-system/)

To add branding within these guidelines, some once-off setup steps are needed.

Your project should have a custom theme:

```yaml
# app/_config/theme.yml
---
Name: project-theme
---
SilverStripe\View\SSViewer:
  themes:
    - 'project-theme'
    - 'nswdpc/waratah:nswds'
    - '$default'
```

In the above configuration, it's expected your theme templates are present in `themes/project-theme` (you can call your theme anything you want).

The `project-theme` has a higher priority than this module's theme, meaning your project can override a template provided by this module. This is quite powerful but remember that doing so may cause your project to miss out on improvements, fixes and features added to this module.

## Branding version

As v2.14 of the NSW Design System acts as a bridge to version v3.0 we have introduced a branding version:

```yml
private static $branding_version = 3.0;
```
Version 0.3.x of this module ships with the value 3.0.

At this point in time, the only change made via the `branding_version` value is the requirement of the 'Public Sans' font if the value is >= 3.0. When the value is < 3.0, Montserrat will be used. The latter is no longer supported for new projects.

## Co-branding

See: https://www.nsw.gov.au/branding/nsw-government-visual-identity-system

### Header component

By default, this module ships with co-branding turned off.

To enable co-branding:

1. Add project-level YAML configuration:

```yaml
# app/_config/cobrand.yml
---
Name: 'app-waratah-cobrand'
---
NSWDPC\Waratah\Models\DesignSystemConfiguration:
  # applicable co-brand values are horizontal or vertical
  co_branding: 'vertical'
```

2. Add a template to your project theme in the path `themes/project-theme/templates/nswds/Includes/Waratah_CoBrand.ss`.
3. Add the relevant co-brand template html, such as an SVG

You should use HTML from the Header component guidelines based on your choice of co-brand vertical/horizontal.

Co-branding was introduced in nswds v2.14.0.

## Supplying custom Javascript and CSS

Adding JS and CSS, or overriding CSS is possible.

The `waratah-branding` project directory is automatically created if it does not already exist. It should be committed to version control.

The following locations are used:

```
waratah-branding/
    frontend/
        src/
            app.js
            defaults.scss
            app.scss
```

A good example of custom branding is the NSWDPC Australia Day website.

### Javascript overrides

Any requirement you add in app.js will be included in the main build.

Your project's app.js is included after the Design System is included (see `themes/nswds/app/frontend/src/js/app.js`)

Any JS can be used, provided it can be loaded by the build process.

#### Example app.js

```javascript
import MySpecialComponent from "./components/myproject/myspecialcomponent";
function initMyProject() {
  new MySpecialComponent().init();
}
initMyProject();
```

### CSS overrides

> 💡 You need to follow the branding guidelines provided by the NSW Design System.

You can override default SCSS settings by adding them to `waratah-branding/frontend/src/defaults.scss` or `waratah-branding/frontend/src/app.scss` in your project.

The file `defaults.scss` will load prior to the main NSWDS scss and allows you to set default settings.

The file `app.scss` will load after the main NSWDS scss and allows you to incorporate CSS for your own components.

## Building

After adding a component you should [build the requirements again](./001_index.md). Watch for any errors and fix as required.

Your project components in the `waratah-branding` directory will be included in the `/vendor/nswdpc/waratah/themes/nswds/app/frontend/dist/*/app.*` assets created from the build process.

The path `vendor/nswdpc/waratah/themes/nswds/app/frontend/dist` is vendor-exposed via `composer.json`
