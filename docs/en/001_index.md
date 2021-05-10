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
    "post-create-project-cmd": [
        "NSWDPC\\Waratah\\Services\\Composer::postCreateProject"
    ],
    "build-nswds": [
        "NSWDPC\\Waratah\\Services\\Composer::buildDesignSystem"
    ]
}
```

The `post-create-project-cmd` scripts will run after `composer create-project` is called to assist with initial build.

When the module is updated or installed `composer run-script build-nswds` should be run.

These scripts require `npm` to be available on the PATH
