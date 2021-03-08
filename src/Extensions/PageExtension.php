<?php

namespace NSWDPC\Waratah\Extensions;

use Page;
use Silverstripe\ORM\DataExtension;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextareaField;

class PageExtension extends DataExtension
{

    private static $db = [
        'Abstract' => 'Text'
    ];

    public function updateCMSFields(FieldList $fields)
    {

        $fields->addFieldToTab(
            'Root.Main',
            TextareaField::create(
                'Abstract',
                'Abstract'
            ),
            'Content'
        );

    }
}
