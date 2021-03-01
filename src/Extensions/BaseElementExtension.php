<?php

namespace NSWDPC\Waratah\Extensions;

use SilverStripe\Core\Injector\Injector;
use SilverStripe\Core\Config\Config;
use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\CheckboxField;

class BaseElementExtension extends DataExtension
{

    private static $db = [
        'HeadingLevel' => 'Varchar(4)',
        'ShowInMenus'  => 'Boolean'
    ];

    private static $headings = [
        'h3' => 'Heading Three',
        'h4' => 'Heading Four',
        'h5' => 'Heading Five',
        'h6' => 'Heading Six',
    ];

    public function updateCMSFields(FieldList $fields)
    {

        $fields->insertAfter(
            DropdownField::create(
                'HeadingLevel',
                'Heading level override',
                $this->owner->config()->headings
            )->setEmptyString('Default (Heading Two)'),
            'Title'
        );
        $fields->insertAfter(
            CheckboxField::create(
                'ShowInMenus',
                'Show in "On this page" menus?'
            ),
            'HeadingLevel'
        );

    }

}
