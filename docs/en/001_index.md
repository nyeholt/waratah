# Documentation

+ [Build the frontend](./#build-the-frontend)
+ [Integration](./002_integration.md)
+ [Branding](./100_branding.md)
+ [Advanced configuration](./101_advanced_configuration)

## Build

After installation, you will need to build the frontend assets using one of our build processes. The build steps are:

1. Build the frontend assets
1. Add Public Sans font (once only, for v0.3 / nswds v2.14.x only)
1. Add theme configuration (once only)
1. Run the standard SS build

### 1. Build the frontend assets 

You can build the frontend in a variety of ways, depending on your build system toolkit.\

The build requires node >= 16 / npm >= 7.

The `buildall` target builds the required assets.

Pick and choose which is best for your CI, build and deployment process.

#### yarn or npm in the project root

```shell
npm --prefix ./vendor/nswdpc/waratah/themes/nswds/app/frontend run-script buildall
```

Or, use yarn:

```shell
yarn --cwd ./vendor/nswdpc/waratah/themes/nswds/app/frontend run buildall
```

#### build.sh

This script uses `npm` on the system to run the buildall target:

```shell
./vendor/nswdpc/waratah/build.sh
```

#### Directly

This is useful during development

```shell
cd ./vendor/nswdpc/waratah/themes/nswds/app/frontend
npm run-script buildall
```

#### Composer scripts

For deeper integration into `composer`, the project can use the following scripts to build on demand or after the project is created.

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

Both script targets run ./build.sh


#### Loading CSS and JS assets

Once built, assets are available in the `vendor/nswdpc/waratah/themes/nswds/app/frontend/dist` location. This path is vendor-exposed in `composer.json` and automatically exposed when the module is installed.

After build you will notice a `waratah-branding` directory in the project root. This is created by the build process and allows further branding customisation.

Development environments will automatically load non-minified assets.

### 2. Optional: add CSS customisation

Customisation can be added to `waratah-branding/frontend/src/app.scss` via your own SCSS/CSS.

See [Branding](./100_branding.md) documentation for more information.


### 3. Add theme configuration

> This is a once-only step during project creation.

Each Silverstripe project needs a theme configuration specified in the project's `app` configuration file.

This change should be committed to version control. You can use your own naming scheme in the configuration file.

```yaml
# app/_config/theme.yml
---
Name: project-theme
---
SilverStripe\View\SSViewer:
  themes:
    - 'nswdpc/waratah:nswds'
    - '$default'
```

### 4. Silverstripe dev/build

After building the assets, run a dev/build and a flush in the normal Silverstripe way:

```shell
./vendor/framework/sake dev/build flush=1
```

You may also need to bypass your browser cache

## Subsequent builds

When updating the module, simply run your preferred build step to update local assets and add any new features (items 1 and 4 in that order).

## Further branding / custom integration

Read: [further branding customisation](./100_branding.md)
