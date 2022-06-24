<?php

namespace NSWDPC\Waratah\Extensions;

use NSWDPC\Members\MemberRegistrationController;
use NSWDPC\Members\MemberProfileController;
use NSWDPC\Members\ProfileProvider;
use NSWDPC\Members\RegistrationProvider;
use SilverStripe\Core\Extension;
use SilverStripe\Core\Injector\Injector;

/**
 * Provides Security helpers, such as returning providers to help with linking
 * from a custom Security template
 * @author James
 */
class SecurityExtension extends Extension
{

    /**
     * Returns a RegistrationProvider
     * @todo allow other RegistrationProvider implementers
     */
    public function RegistrationProvider() : ?RegistrationProvider {
        if(class_exists(MemberRegistrationController::class)) {
            $provider = Injector::inst()->get( MemberRegistrationController::class );
            // If the provider has a rego form, return the provider
            if($provider->MemberProfileRegistrationForm()) {
                return $provider;
            }
        }
        return null;
    }

    /**
     * Returns a ProfileProvider
     * @todo allow other ProfileProvider implementers
     */
    public function ProfileProvider() : ?ProfileProvider {
        if(class_exists(MemberProfileController::class)) {
            return Injector::inst()->get( MemberProfileController::class );
        }
        return null;
    }

}
