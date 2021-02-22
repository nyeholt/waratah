<?php

namespace NSWDPC\Waratah\Extensions;

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Core\Extension;
use SilverStripe\Versioned\Versioned;

/**
 * Temporary extension until
 * https://github.com/silverstripe/silverstripe-asset-admin/issues/960#issuecomment-718302815
 * is sorted out upstream, along with the leftandmain.css in theme-australiaday
 * @author James
 */
class UploadFieldExtension extends Extension {

    public function onBeforeRenderHolder($context, $properties) {
        $record = false;
        $is_versioned = false;
        if($form = $this->owner->getForm()) {
            $record = $form->getRecord();
            $is_versioned = $record->hasExtension( Versioned::class );
        }

        if($is_versioned) {
            $message = _t(
                __CLASS__ . '.FILES_WILL_PUBLISH_ON_PUBLISH',
                'Uploaded files remain in the draft state until they or this record is published'
            );
        } else {
            $message = _t(
                __CLASS__ . '.FILES_WILL_PUBLISH_ON_PUBLISH',
                'Uploaded files remain in the draft state until they are published or this record is saved'
            );
        }

        // suffix the message on to the
        $right_title = $this->owner->RightTitle();
        $this->owner->setRightTitle( ($right_title  ? $right_title . "\n\n" : "") . $message );
    }

}
