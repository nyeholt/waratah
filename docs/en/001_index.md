# Documentation

1. Build the frontend

## Build the frontend

You can build the frontend in a variety of ways, depending on your build system toolkit.

1. Run the `./build.sh` script in the root of this project OR
1. Run `npm run-script buildall` in [`./themes/nswds/app/frontend`](../../themes/nswds/app/frontend) OR
1. Add the script below to your project's composer.json

### Composer scripts

Example scripts for initiating a build via composer actions.

```json
"scripts": {
    "post-package-install": [
        "NSWDPC\\Waratah\\Services\\Composer::postPackageInstall"
    ],
    "post-package-update": [
        "NSWDPC\\Waratah\\Services\\Composer::postPackageUpdate"
    ],
    "build-nswds" : [
        "NSWDPC\\Waratah\\Services\\Composer::buildDesignSystem"
    ]
}
```

Run with `composer run-script build-nswds`

The `post-package-install` and `post-package-update` scripts will also run the build when this module is installed or updated.
