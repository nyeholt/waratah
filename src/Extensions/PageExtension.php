<?php

namespace NSWDPC\Waratah\Extensions;

use Page;
use Silverstripe\ORM\DataExtension;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\CheckboxField;

class PageExtension extends DataExtension
{

    private static $db = [
        'Abstract' => 'Text',
        'IsLandingPage' => 'Boolean'
    ];

    public function updateCMSFields(FieldList $fields)
    {

        $fields->addFieldToTab(
            'Root.Main',
                TextareaField::create(
                    'Abstract',
                    _t(__CLASS__. '.ABSTRACT', 'Abstract')
                )->setDescription('This will show at the top of the page, and also be displayed in listings and search results'),
                'Content'
        );

        $fields->addFieldToTab(
            'Root.Main',
                CheckboxField::create(
                    'IsLandingPage',
                    _t(__CLASS__. '.ISLANDINGPAGE', 'Show this page as a landing page')
                )->setDescription('This will remove any side navigation or other extras'),
                'Abstract'
        );

    }
}
