# NSW Design System integration for Silverstripe websites

This module adds the [NSW Design System v2.14.x](https://github.com/digitalnsw/nsw-design-system-v2) to a Silverstripe website. If you are a NSW Government Agency using Silverstripe framework and/or CMS, this is the module to use.

> Transition to v3.0 of the NSW Design System is being carried out on the v3 branch.

This module is maintained by the NSWDPC Digital Team. We're a friendly crew that welcome pull requests and issue reports.

## Version requirements

See Installation, below.

## Features

+ ✅ Implements all components from the NSW Design System v2.14
+ ✅ Standard page layouts
+ ✅ Integrates our supported [Elemental elements](https://github.com/silverstripe/silverstripe-elemental)
+ ✅ Includes the [NSWDPC Silverstripe content authoring boilerplate](https://github.com/nswdpc/silverstripe-content-boilerplate) containing content authoring tools.
+ ✅ Supports all Silverstripe form fields
+ ✅ Adds SlimSelect for `<select multiple>` support
+ ✅ [A simple frontend build process using Yarn or NPM](./docs/en/001_index.md)
+ ✅ Branding: supports adding project-specific JS and SCSS requirements to the build, including templates and settings overrides
+ ✅ Co-branding: supports co-branding within the NSW branding guidelines

### For specific branding

+ 🎨 [Apply a colour palette](./docs/en/100_branding.md)
+ 🧠 [More involved configuration](./docs/en/101_advanced_configuration.md)

## Installation

Starting within a Silverstripe install, the recommended way of installing this module is via [composer](https://getcomposer.org/download/)

```shell
composer require nswdpc/waratah:^0.3
```

### Versions

Use version constraints in composer to install the module supporting the required version of the NSW Design System.

+ `composer require nswdpc/waratah:^0.2` will install the module with support for v2.13.x of the NSW Design System. It's recommended to move to ^0.3 to aid the transition to v3.x of the NSW Design System.
+ `composer require nswdpc/waratah:^0.3` will install the module with support for v2.14.x of the NSW Design System
+ `composer require nswdpc/waratah:dev-v3` will install the module with support for v3.x of the NSW Design System. When complete, this will be tagged v1.x

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
