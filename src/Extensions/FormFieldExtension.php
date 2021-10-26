<?php

namespace NSWDPC\Waratah\Extensions;

use SilverStripe\Core\Extension;
use SilverStripe\Forms\FormField;

class FormFieldExtension extends Extension
{

    /**
     * Remove `default_classes` from the ExtraClass and return that
     * to avoid default nsw-* classes being added to the field holder
     * @return string
     */
    public function ParentExtraClass() : string {
        $extraClasses = $this->owner->extraClasses;
        if(empty($extraClasses) || !is_array($extraClasses)) {
            return "";
        }
        $defaultClasses = $this->owner->config()->get('default_classes');
        if(empty($defaultClasses) || !is_array($defaultClasses)) {
            return "";
        }
        // values in extraClasses not present in defaultClasses
        $diff = array_diff($extraClasses, $defaultClasses);
        $classes = trim(implode(' ', $diff));
        return $classes;
    }

}
