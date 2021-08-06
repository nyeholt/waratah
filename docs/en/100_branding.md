# Branding

The module supports branding via `npx patch-package`.

Creating a colour palette for a co-branded site is fairly simple.

## Edit the settings.scss

In your favourite editor, open `themes/nswds/app/frontend/node_modules/nsw-design-system/src/global/scss/settings/_settings.scss` in the module. 

Modify the desired settings:

```scss
$nsw-primary-blue: darken(#78b143, 20%);
$nsw-primary-highlight: #78b143;
```
Save the changes and ...

## Create a patch file

In your project root

### Create the patch directory

```
$ mkdir -p mysite/frontend/patches
```
### Switch to the module

```
$ cd vendor/nswdpc/waratah/themes/nswds/app/frontend
```

### Run patch-package

```shell
$ npx patch-package --patch-dir ../../../../../../../mysite/frontend/patches nsw-design-system
```
(patch-package is a dev requirement)

This will create a patch in `mysite/frontend/patches`

```shell
$ ls -1 mysite/frontend/patches
nsw-design-system+2.13.0.patch
```

Build the frontend again to apply the patch (and any other patches in `mysite/frontend/patches`)

```shell
$ pwd
/path/to/vendor/nswdpc/waratah/themes/nswds/app/frontend
$ npm run-script buildall
```

You can also run `npm run-script patch` to only apply patches.

When a patch is applied, you will see this build output:
```shell
patch-package 6.4.7
Applying patches...
nsw-design-system@2.13.0 ✔
```

If no patches are applied:
```shell
patch-package 6.4.7
Applying patches...
No patch files found
```

### After patching

1. Refresh the development site to see changes.
1. Commit the patch to version control so that your CI/Build process finds it.

### Revert the patch

1. Remove the patch from `mysite/frontend/patches` (or move it aside)
2. `npm install --prefer-online nsw-design-system`
3. Build `npm run-script buildall`

To create a new patch, start again after reverting.
