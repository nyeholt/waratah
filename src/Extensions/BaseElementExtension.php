<?php

namespace NSWDPC\Waratah\Extensions;

use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\CheckboxField;

class BaseElementExtension extends DataExtension
{

    private static $db = [
        'HeadingLevel' => 'Varchar(4)',
        'ShowInMenus'  => 'Boolean',
        'AddContainer' => 'Boolean',
        'AddBackground' => 'Boolean'
    ];

    private static $headings = [
        'h3' => 'Heading Three',
        'h4' => 'Heading Four',
        'h5' => 'Heading Five',
        'h6' => 'Heading Six',
    ];

    /**
     * Use Reflection to get the element shortname for a CSS class
     */
    public function ElementShortName() {
        $rc = new \ReflectionClass($this->owner);
        $short = $rc->getShortName();
        return strtolower(preg_replace("[^A-Za-z_0-9]", "", $short));
    }

    public function updateCMSFields(FieldList $fields)
    {

        $fields->removeByName(['ExtraClass']);

        $fields->insertAfter(
            'Title',
            CheckboxField::create(
                'ShowInMenus',
                'Show in "On this page" menus?'
            )
        );

        $fields->addFieldsToTab(
            'Root.Settings',
            [
                DropdownField::create(
                    'HeadingLevel',
                    'Heading level override',
                    $this->owner->config()->headings
                )->setEmptyString('Default (Heading Two)'),
                CheckboxField::create(
                    'AddContainer',
                    'Add a container to this block'
                ),
                CheckboxField::create(
                    'AddBackground',
                    'Add a light grey background to this block'
                )
            ]
        );


    }

}
