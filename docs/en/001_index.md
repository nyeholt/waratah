# Documentation

+ [Build the frontend](./#build-the-frontend)
+ [Integration](./002_integration.md)
+ [Branding](./100_branding.md)
+ [Advanced configuration](./101_advanced_configuration)

## Build

After installation, you will need to build the frontend assets. We don't ship distribution assets as our build system allows per-project configuration.

### Add theme configuration

Each Silverstripe project needs a theme configuration specified either in the project's `mysite` or `app` directory.

```yaml
# mysite/_config/theme.yml
---
Name: project-theme
---
SilverStripe\View\SSViewer:
  themes:
    - 'nswdpc/waratah:nswds'
    - '$default'
```

### Build

Then, run a dev/build and a flush in the normal Silverstripe way:

```shell
/path/to/php vendor/framework/cli-script.php dev/build flush=1
```

You may also need to flush from the browser due to split caching between the shell and the web.

### Build the frontend

You can build the frontend in a variety of ways, depending on your build system toolkit.

The buildall target:
+ Runs an `npm install --prefer-offline --silent --no-audit`
+ Runs any patches to be applied
+ Runs the gulp build

> Pick and choose which is best for you CI, build and deployment process.

#### yarn or npm in the project root

Use yarn from the project root with a working directory and the `buildall` target.

```shell
yarn --cwd ./vendor/nswdpc/waratah/themes/nswds/app/frontend run buildall
```

```shell
npm --prefix ./vendor/nswdpc/waratah/themes/nswds/app/frontend run-script buildall
```

#### build.sh

This script uses `npm` to run the buildall target:

```shell
cd ./vendor/nswdpc/waratah
./build.sh
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

### Deeper integration

Read: [Branding](./100_branding.md)
