# Branding

The module supports branding by including settings and overrides in the following project locations:

+ mysite/frontend/src/app.js
+ mysite/frontend/src/defaults.scss
+ mysite/frontend/src/app.scss

> mysite will change to app in a future release


## Javascript overrides

Any requirement you add in app.js will be included in the main build.

Your project's app.js is included after the Design System is included (see `themes/nswds/app/frontend/src/js/app.js`)

### Example app.js

```javascript
import MySpecialComponent from "./components/myproject/myspecialcomponent";
function initMyProject() {
  new MySpecialComponent().init();
}
initMyProject();
```

## CSS overrides

You can override default SCSS settings by adding them to `mysite/frontend/src/defaults.scss` or `mysite/frontend/src/app.scss` in your project.

The file `defaults.scss` will load prior to the main NSWDS scss and allows you to set default settings.

The file `app.scss` will load after the main NSWDS scss and allows you to incorporate CSS for your own components.

### Example defaults.scss
```css
// Change the font-family
$font-stack: 'Comic Sans MS', Arial, sans-serif !default;
// Modify shades
$dark80: #222222 !default;
// Modify branding colours
$nsw-primary-blue: #000066 !default;
```

Obviously, you need to follow the branding guidelines.


### Example app.scss

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

After adding a component you should build the requirements again. Watch for any errors and fix as required.

Your project components will be included in the /vendor/nswdpc/waratah/themes/nswds/frontend/dist/*/app.* assets created from the build process.

The path `themes/nswds/app/frontend/dist` is vendor-exposed via `composer.json`
