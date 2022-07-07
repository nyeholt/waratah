## Integration

The standard build created by this module provides support for all components in the NSW Design System. Some components are accessed via custom templates in your project for specific use cases.

As an extension to the standard Silverstripe Elemental implementation where all elements are contained in the Main content area, pages will two additional content block areas: Side and Top.

Our content management ethos is that Content Editors should not have to understand HTML or create page layouts or templates via an HTML editing field in order to implement components in a page.

This decision, especially in relation to page elements, allows for customisation of elements using standard form fields and allows us to move components forward as they are changed by the NSW Design System team without having to handle or deal with legacy HTML.


### Form fields

+ All Silverstripe form fields + actions are supported
+ [Field hints](https://github.com/nswdpc/silverstripe-field-hint)
+ Custom fields such as our [Gov.uk inspired date input fields](https://github.com/nswdpc/silverstripe-datetime-inputs)
+ Notifications and validation messages use In-page alert styles
+ Accordion fields via `ToggleCompositeField`
+ Tabset fields in forms
+ Silverstripe UserForms support, for forms built within the CMS

### Supported extras

#### SlimSelect

This is shipped by default and provides support for tag based `<select multiple>` fields / ListboxField

### Project extras

Some projects require external libraries beyond those provided in this module. In this case you can add the following to your `waratah-branding` directly. Here is an example structure with notes:

```
public/
    _resources/
waratah-branding/
    frontend/
        src/
            js/
                app.js -> this will be imported and run after `window.NSW.initSite();` 
            scss/
                defaults.scss -> this will be included as the first CSS component in the build
                app.scss -> this will be included as the last CSS component in the build
vendor/
    nswdpc/
        waratah/
```

Project-based components will be included in the main app[.min].js and app[.min].css to be loaded on each request.

The implementation details for the external library are for the project to decide. If you have project assets for a specific area, a better option is to load these as-required rather than add them to the main build output.

Either way, you will need to load any external libraries into your project e.g via cdnjs or locally hosted assets.
