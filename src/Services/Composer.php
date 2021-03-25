<?php
namespace NSWDPC\Waratah\Services;

use Composer\DependencyResolver\Operation\OperationInterface;
use Composer\DependencyResolver\Operation\InstallOperation;
use Composer\DependencyResolver\Operation\UpdateOperation;
use Composer\EventDispatcher\Event as BaseEvent;
use Composer\Script\Event as ScriptEvent;
use Composer\Installer\PackageEvent;

/**
 * Composer integration for this module
 * Can be used by composer to automatically build the DS via npm and gulp during install and update
 * Example: composer.json (at the project level)
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
 * @author James
 */
class Composer {

    /**
     * This vendor's name
     * @var string
     */
    private static $vendorName = 'nswdpc';

    /**
     * This vendor module's name
     * @var string
     */
    private static $packageName = 'silverstripe-nsw-design-system';

    /**
     * Return the package, provided it matches this module's package name
     */
    private static function getPackage(PackageEvent $event) {
        // @var OperationInterface
        $operation = $event->getOperation();
        $package = null;
        if($operation instanceof InstallOperation) {
            $package = $operation->getPackage();
        } else if($operation instanceof UpdateOperation) {
            $package = $operation->getTargetPackage();
        }
        if($package) {
            print get_class($package);
            print "\n";
            $name = $package->getName();
            print "Name: {$name}\n";
            if(self::$vendorName . "/" . self::$packageName == $name) {
                return $package;
            }
        }
        return false;
    }

    /**
     * Called via post-package-install
     */
    public static function postPackageInstall(PackageEvent $event) {
        $package = self::getPackage($event);
        if(!$package) {
            return;
        }
        print $package->getName();
        print "\n";
    }

    /**
     * Called via post-package-update
     */
    public static function postPackageUpdate(PackageEvent $event) {
        $package = self::getPackage($event);
        if(!$package) {
            return;
        }
        print $package->getName();
        print "\n";
    }

    /**
     * Called via post-update-cmd
     */
    public static function postUpdateCommand(ScriptEvent $event) {
        self::buildDesignSystem($event);
    }

    /**
     * Execute the build script for the design system
     * composer run-script build-nswds
     */
    public static function buildDesignSystem(ScriptEvent $event) {
        $build = realpath(dirname(__FILE__) . "/../../build.sh");
        if($build && file_exists($build) && is_executable($build)) {
            exec( escapeshellcmd($build) );
            return true;
        } else {
            print "build.sh not found, or is not executable\n";
            return false;
        }
    }
}
