# Branding

The module supports branding and co-branding as set by the [NSW Government branding guidelines](https://digitalnsw.github.io/nsw-design-system/)

## Branding version

As v2.14 of the NSW Design System acts as a bridge to version v3.0 we have introduced a branding version:

```yml
private static $branding_version = 3.0;
```
Version 0.3.x of this module ships with the value 3.0.

At this point in time, the only change made via the `branding_version` value is the inclusion of the 'Public Sans' font if the value is >= 3.0. When the value is < 3.0, Montserrat will be used.

## Co-branding

### Header component

By default, the module ships with co-branding turned off.

To enable co-branding:

1. Add project-level yaml configuration:

```yaml
---
Name: 'app-waratah-cobrand'
---
NSWDPC\Waratah\Models\DesignSystemConfiguration:
  # applicable co-brand values are horizontal or vertical
  co_branding: 'vertical'
```

2. Add a template to your project theme in the path `templates/nswds/Includes/Waratah_CoBrand.ss`.
3. Add the relevant co-brand template html, such as an SVG

You should use HTML from the Header component guidelines based on your choice of co-brand vertical/horizontal.

Co-branding was introduced in nswds v2.14.0


## Supplying custom Javascript and CSS

Adding JS and CSS, or overriding CSS is possible. The 'waratah-branding' project directory is automatically created if it does not already exist. It should be committed to version control.

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

#### Example defaults.scss
```css
// Change the font-family
$font-stack: 'Comic Sans MS', Arial, sans-serif !default;
// Modify shades
$dark80: #222222 !default;
// Modify branding colours
$nsw-primary-blue: #000066 !default;
```

#### Example app.scss

```css
// NSW Design System style overrides
@import 'styles/myproject/base';
```

Your base component may have some styles like this, or not:

```css
.nsw-wysiwyg-content,
.nsw-body-content,
.nsw-content-block {
  font-weight: $light;
}
```

## Building

After adding a component you should [build the requirements again](./001_index.md). Watch for any errors and fix as required.

Your project components in the `waratah-branding` directory will be included in the `/vendor/nswdpc/waratah/themes/nswds/app/frontend/dist/*/app.*` assets created from the build process.

The path `themes/nswds/app/frontend/dist` is vendor-exposed via `composer.json`
