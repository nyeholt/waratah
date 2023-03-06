<?php

namespace NSWDPC\Waratah\Extensions;

use SilverStripe\Core\Config\Config;
use SilverStripe\Core\Extension;
use SilverStripe\Security\LoginForm;

/**
 * Provide extra methods to assist with OAuth login
 * @author James
 */
class OAuthLoginFormExtension extends Extension
{

    /**
     * Update the form actions provided by the base form, set a description and right
     * title to provide context
     * @return void
     */
    public function updateFormActions(&$actions) {
        // providing some protection against owner->getAuthenticatorClass() method
        // call not existing if this is bound incorrectly.
        if ($this->owner instanceof LoginForm) {
            $providers = Config::inst()->get($this->owner->getAuthenticatorClass(), 'providers');
            foreach ($providers as $provider => $config) {
                $name = isset($config['name']) ? $config['name'] : $provider;
                $action = $actions->fieldByName('action_authenticate_'. $provider);
                if($action) {
                    $action->setDescription( $name );
                    $label = isset($config['label']) ? $config['label'] : '';
                    if($label) {
                        $action->setRightTitle( $label );
                    }
                }
            }
        }
    }
}
