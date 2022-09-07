# NSW Design System integration for Silverstripe websites

This module adds support for the [NSW Design System](https://github.com/digitalnsw/nsw-design-system) to a Silverstripe website.

If you are a NSW Government Agency using [Silverstripe Framework and/or CMS](https://silverstripe.org), this is the module to use.

This module is maintained by the NSWDPC Digital Team. We're a friendly crew that welcomes pull/merge requests and issue reports via Github.

## Features

+ ✅ Implements all components from the NSW Design System v3.x
+ ✅ Standard page layouts based on [template examples](https://digitalnsw.github.io/nsw-design-system/templates/index.html)
+ ✅ Integrates our supported [Elemental content blocks](https://github.com/silverstripe/silverstripe-elemental)
+ ✅ Includes the [NSWDPC Silverstripe content authoring boilerplate](https://github.com/nswdpc/silverstripe-content-boilerplate) containing content authoring tools.
+ ✅ Forms: supports all Silverstripe form fields plus our supported form field extensions
+ ✅ Adds SlimSelect for `<select multiple>` support
+ ✅ [A simple frontend build process using Yarn or NPM](./docs/en/001_index.md)
+ ✅ Themes and templates: supports adding project-specific JS and SCSS requirements to the build, including templates and settings overrides
+ ✅ Branding: full support for Masterbrand, Co-brand and Independent entities within [the NSW branding guidelines](https://digitalnsw.github.io/nsw-design-system/core/logo/index.html).

## Installation

Starting within a standard Silverstripe v4 installation, install via [Composer](https://getcomposer.org/download/).


### Silverstripe >= 4.10.0

```shell
composer require nswdpc/waratah:~1.1.0
```

### Silverstripe < 4.10.0

```shell
composer require nswdpc/waratah:~1.0.0
```

[Previous version history](./docs/en/404_previous_versions.md)

### After installation

Next 👉 [building the frontend assets](./docs/en/001_index.md)

## License

[BSD-3-Clause](./LICENSE.md)

## Documentation

* [Further documentation](./docs/en/001_index.md)

## Configuration

See [_config directory](./_config) for default configuration settings

## Maintainers

+ [dpcdigital@NSWDPC:~$](https://dpc.nsw.gov.au)

## Security

If you have found a security issue with this module, please email digital[@]dpc.nsw.gov.au in the first instance, detailing your findings.

## Bugtracker

We welcome bug reports, pull requests and feature requests on the Github Issue tracker for this project.

Please review the [code of conduct](./code-of-conduct.md) prior to opening a new issue.

## Development and contribution

If you would like to make contributions to the module please ensure you raise a pull request and discuss with the module maintainers.

Please review the [code of conduct](./code-of-conduct.md) prior to completing a pull request.
