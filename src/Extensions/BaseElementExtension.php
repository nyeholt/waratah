<?php

namespace NSWDPC\Waratah\Extensions;

use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\CheckboxField;


/**
 * Provide additional elemental integration with DS
 * @author Mark Taylor
 * @author James Ellis
 */
class BaseElementExtension extends DataExtension
{

    /**
     * @var array
     */
    private static $db = [
        'HeadingLevel' => 'Varchar(4)',
        'ShowInMenus'  => 'Boolean',
        'AddContainer' => 'Boolean',
        'AddBackground' => 'Varchar(32)'
    ];

    /**
     * @var array
     */
    private static $headings = [
        'h3' => 'Heading Three',
        'h4' => 'Heading Four',
        'h5' => 'Heading Five',
        'h6' => 'Heading Six',
    ];

    /**
     * @var array
     */
    private static $backgrounds = [
        'white' => 'White',
        'light-10' => 'Light 10',
        'light-20' => 'Light 20',
        'light-40' => 'Light 40',
    ];

    /**
     * Use Reflection to get the element shortname for a CSS class
     */
    public function ElementShortName() : string {
        $rc = new \ReflectionClass($this->owner);
        $short = $rc->getShortName();
        return strtolower(preg_replace("[^A-Za-z_0-9]", "", $short));
    }

    /**
     * Add CMS fields for element
     */
    public function updateCMSFields(FieldList $fields)
    {

        $fields->removeByName(['ExtraClass']);

        $fields->insertAfter(
            'Title',
            CheckboxField::create(
                'ShowInMenus',
                _t(
                    'nswds.SHOW_THIS_ELEMENT_IN_ON_THIS_PAGE_MENUS',
                    'Show in "On this page" menus?'
                )
            )
        );

        $headings = $this->owner->config()->get('headings');
        if(!is_array($headings)) {
            $headings = [];
        }
        $backgrounds = $this->owner->config()->get('backgrounds');
        if(!is_array($backgrounds)) {
            $backgrounds = [];
        }
        $fields->addFieldsToTab(
            'Root.Settings',
            [
                DropdownField::create(
                    'HeadingLevel',
                    _t(
                        'nswds.HEADING_LEVEL_OVERRIDE',
                        'Heading level override'
                    ),
                    $headings
                )->setEmptyString('Default (Heading Two)'),
                CheckboxField::create(
                    'AddContainer',
                    _t(
                        'nswds.ADD_CONTAINER_TO_BLOCK',
                        'Add a container to this block'
                    )
                )->setDescription(
                    _t(
                        'nswds.IGNORED_ON_CERTAIN_PAGES',
                        'Applicable to landing page \'Main content\' area, only. Pages with specific layouts may ignore this setting'
                    )
                ),
                DropdownField::create(
                    'AddBackground',
                    _t(
                        'nswds.ADD_BACKGROUND',
                        'Add a background to this block'
                    ),
                    $backgrounds
                )->setEmptyString('Choose a background')
                ->setDescription(
                    _t(
                        'nswds.IGNORED_ON_CERTAIN_PAGES',
                        'Applicable to landing page \'Main content\' area, only. Pages with specific layouts may ignore this setting'
                    )
                )
            ]
        );


    }

//     // public function onBeforeWrite()
//     // {
//     //     parent::onBeforeWrite();
//     //     /*
//     //      * Backwards compatibility
//     //      * Allow CMS user to choose different background options
//     //      */
//     //     if($this->owner->AddBackground == 1) {
//     //         $this->owner->AddBackground = 'light-10'; // set to previous single option
//     //     }
//     // }
//
//     public function Background() {
//         /*
//          * Backwards compatibility
//          * Allow for unset values
//          */
//         if ($this->owner->AddBackground > 0) {
//             return $this->owner->AddBackground;
//         } elseif ($this->owner->AddBackground == 1) {
//             return 'light-10';
//         } else ($this->owner->AddBackground == 0) {
//             return false;
//         }
//
//     }
//
// //    MAKE A TASK

}
