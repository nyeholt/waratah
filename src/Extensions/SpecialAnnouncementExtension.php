<?php

namespace NSWDPC\Waratah\Extensions;

use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\DropdownField;

class SpecialAnnouncementExtension extends DataExtension
{

    private static $db = [
        'AlertState' => 'Varchar(16)'
    ];

    public function updateCMSFields(FieldList $fields)
    {

        $fields->insertBefore(
            'Category',
            DropdownField::create(
                'AlertState',
                'Alert state',
                [
                    'default' => 'Default alert',
                    'critical' => 'Critical alert',
                    'light' => 'Light alert'
                ]
            )
        );

    }

}
