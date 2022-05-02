## Integration

The standard build created by this module provides:

+ A default page template
+ Navigation
+ Sidebar support
+ Form, fields and buttons
+ Content lists - Accordion, Cards, Tabs, Link list, List items, Content blocks
+ [Filter form](./003_filter_form.md)
+ Hero banner
+ Search
+ Listings + pagination
+ Media - Image, Video, Iframe, Gallery
+ Tags
+ NSW Masthead

Each page will have a Main content block area and two additional content block areas: Side and Top.

### Form fields

+ All Silverstripe form fields + actions are supported [including field hints](https://github.com/nswdpc/silverstripe-field-hint)
+ Notifications and validation messages use notification + alert styles
+ Accordion fields via `ToggleCompositeField`
+ Tabset fields in forms
+ Silverstripe UserForms support, for forms built within the CMS

> The only form field not well supported is SelectionGroup, this is rendered as a Tab field but the radio button does not receive input when the tab is clicked.

### Supported extras

#### SlimSelect

Provides support for tag based `<select multiple>` fields / ListboxField

### Project extras

Some projects require external libraries beyond those provided in this module. In this case you can add the following to your `waratah-branding` directly:

```
waratah-branding/
    frontend/
        src/
            js/
                app.js -> this will be included in the build process
            scss/
                app.scss -> this will be included in the build process
```

Project-based components will be included in the main app[.min].js and app[.min].css to be loaded on each request.

The implementation details for the external library are for the project to decide. If you have project assets for a specific area, a better option is to load these as-required rather than add them to the main build output.

Either way, you will need to load any external libraries into your project e.g via cdnjs or locally hosted assets.
