<?php

namespace NSWDPC\Waratah\Extensions;

use Page;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\DropdownField;
use Silverstripe\ORM\DataExtension;

/**
 * Provides Menu functionality for use in the site theme
 * @author Mark Taylor
 */
class MenuSupportExtension extends DataExtension
{

    private static $db = [
        'PageIcon' => 'Varchar(32)',
        'PageColour' => 'Varchar(32)',
        'ShowAsButton' => 'Boolean',
        'NavigationOptions' => 'Varchar(32)',
        'NavigationColumn' => 'Boolean'
    ];

    public function updateCMSFields(FieldList $fields)
    {

        $fields->addFieldsToTab(
            'Root.Theme',
            [
                TextField::create('PageIcon', 'Icon associated with this page'),
                DropdownField::create('PageColour', 'Coloour associated with this page',
                    [
                        'moss-green' => 'Green',
                        'tranquil-turquoise' => 'Turquoise',
                        'bright-orange' => 'Orange',
                        'hot-pink' => 'Pink'
                    ]
                )->setEmptyString('Choose an option'),
                CheckboxField::create('ShowAsButton', 'Show this link as a button in navigation'),
                DropdownField::create('NavigationOptions', 'Navigation options',
                    [
                        'tiles' => 'Show child pages as tiles',
                        'two-col' => 'Show child pages in two columns'
                    ]
                )->setEmptyString('Choose an option'),
                CheckboxField::create('NavigationColumn', 'Show this in the second column')
            ]
        );
    }

    public function getFirstColumnChildren()
    {
        return $this->owner->Children()->filter('NavigationColumn', 0);
    }
    public function getSecondColumnChildren()
    {
        return $this->owner->Children()->filter('NavigationColumn', 1);
    }

}
