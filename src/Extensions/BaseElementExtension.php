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
        'AddBackground' => "Enum('0,1,white,light-10,light-20,light-40', '0')",
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
                    $this->getBackgrounds()
                )->setEmptyString('Choose a background')
                ->setDescription(
                    _t(
                        'nswds.IGNORED_ON_CERTAIN_PAGES',
                        'Adding a background will add some padding to top and bottom of your block<br>Applicable to landing page \'Main content\' area, only. Pages with specific layouts may ignore this setting'
                    )
                )
            ]
        );

    }

    /**
     * Return an array of available backgrounds, based on the nswds background choices
     * from `_section.scss`
     */
    protected function getBackgrounds() : array {
        $backgrounds = $this->owner->config()->get('backgrounds');
        if(!is_array($backgrounds)) {
            $backgrounds = [];
        }
        return $backgrounds;
    }

    /**
     * Return the supported background value, if it exists
     * Return an empty string if the value is not supported
     */
    protected function getSupportedBackground(string $bg) : string {
        $backgrounds = $this->getBackgrounds();
        return array_key_exists($bg, $backgrounds) ? $bg : '';
    }

    /**
     * Return the nswds background value or an empty value, taking into account previous 0/1 or empty values
     * https://github.com/digitalnsw/nsw-design-system-v2/blob/master/src/styles/section/_section.scss
     * Use by a template as $Background
     */
    public function getBackground() : string {
        $bg = $this->owner->AddBackground;
        if (empty($bg)) {
            // BC handling for the original value of 0 and other empty() values
            // including string '0'
            $bg = '';
        } else if($bg === '1' || $bg === 1) {
            // BC handling for the original value of 1 meaning light-10
            $bg = 'light-10';
        }
        $bg = $this->getSupportedBackground(strval($bg));
        $spacing = DesignSystemConfiguration::get_spacing_class();
        $classes = [];
        if(!$bg) {
            $classes[] = 'nsw-block';
            if($spacing) {
                $classes[] = $spacing;
            }
        } else {
            $classes[] = 'nsw-section--' . $bg;
        }
        return implode(" ", $classes);
    }

}
