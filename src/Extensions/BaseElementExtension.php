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
        'AddBackground' => 'Boolean'
    ];

    /**
     * By default all elements have a container, elements not on landing/full width pages
     * will ignore the container value and never be in a container, in any case
     * @var array
     */
    private static $defaults = [
        'AddContainer' => 1
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
                CheckboxField::create(
                    'AddBackground',
                    _t(
                        'nswds.ADD_BACKGROUND',
                        'Add a light grey background to this block'
                    )
                )->setDescription(
                    _t(
                        'nswds.IGNORED_ON_CERTAIN_PAGES',
                        'Applicable to landing page \'Main content\' area, only. Pages with specific layouts may ignore this setting'
                    )
                )
            ]
        );


    }

}
