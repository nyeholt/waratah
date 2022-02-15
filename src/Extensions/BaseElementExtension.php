<?php

namespace NSWDPC\Waratah\Extensions;

use NSWDPC\Waratah\Models\DesignSystemConfiguration;
use NSWDPC\Waratah\Forms\SectionSelectionField;
use NSWDPC\Waratah\Traits\DesignSystemSelections;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\View\Requirements;


/**
 * Provide additional elemental integration with DS
 * @author Mark Taylor
 * @author James Ellis
 */
class BaseElementExtension extends DataExtension
{

    use DesignSystemSelections;

    /**
     * AddBackround - the options light-10,light-20,light-40 are nswds v2.13 options and will be deprecated in v1.0.
     * The AddBackground option '1' is a legacy option that triggered 'light-10' background. This now triggers 'off-white'
     * The AddBackground value of 0, the default, produces a nsw-section without suffixed classes
     * See the getBackground method which templates should use to retrieve the correct background class for the section ({$Background})
     * @var array
     */
    private static $db = [
        'HeadingLevel' => 'Varchar(4)',
        'ShowInMenus'  => 'Boolean',
        'AddContainer' => 'Boolean',
        'AddBackground' => "Enum('brand-dark,brand-light,brand-supplementary,black,white,off-white,grey-01,grey-02,grey-03,grey-04,0,1,light-10,light-20,light-40', '0')",
        'IsBoxed' => 'Boolean',// nsw-section--box
        'VerticalSpacing' => "Enum('half-padding,no-padding')", // nsw-section--no-padding etc
    ];

    /**
     * @var array
     */
    private static $has_one = [
        'SectionImage' => Image::class // nsw-section--image
    ];

    /**
     * Publish section image via ownership
     * @var array
     */
    private static $owns = [
        'SectionImage'
    ];

    /**
     * Delete the section image when this block is deleted
     * @var array
     */
    private static $cascade_deletes = [
        'SectionImage'
    ];

    /**
     * By default all elements have a container, elements not on landing/full width pages
     * will ignore the container value and never be in a container, in any case
     * @var array
     */
    private static $defaults = [
        'AddContainer' => 1,
        'AddBackground' => 0,
        'IsBoxed' => 0,
        'VerticalSpacing' => null,// default
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
     * @deprecated v1.0
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
                SectionSelectionField::create(
                    'AddBackground',
                    _t(
                        'nswds.ADD_BACKGROUND',
                        'Add a background to this block'
                    )
                )->setDescription(
                    _t(
                        'nswds.BACKGROUND_APPLICATION_NOTES',
                        'Backgrounds are applied to content in the landing page \'Main content\' area, only'
                        . '<br>Adding a background may add some padding to top and bottom of this block.'
                    )
                )->setRightTitle(
                    _t(
                        'nswds.IGNORED_ON_CERTAIN_PAGES',
                        'Pages with specific layouts may ignore this setting'
                    )
                ),
                DropdownField::create(
                    'VerticalSpacing',
                    _t(
                        'nswds.VERTICAL_SPACING_TITLE',
                        'Specify optional vertical spacing for this block'
                    ),
                    [
                        'half-padding' => _t('nswds.HALF_PADDING', 'Half vertical spacing'),
                        'no-padding' => _t('nswds.NO_PADDING', 'No vertical spacing'),
                    ]
                )->setEmptyString(''),
                CheckboxField::create(
                    'IsBoxed',
                    _t(
                        'nswds.IS_BOXED',
                        'Apply a box outline to this block'
                    )
                ),
                UploadField::create(
                    'SectionImage',
                    _t(
                        'nswds.SECTION_IMAGE',
                        'Add a background image to this block'
                    )
                )->setIsMultiUpload(false)
                ->setAllowedMaxFileNumber(1)
                ->setAllowedExtensions('jpg')
                ->setAttachEnabled(false)
                ->setFolderName('SectionBackgrounds')
            ]
        );

    }

    /**
     * Return an array of available backgrounds
     * See: https://nswdesignsystem.surge.sh/styles/section/index.html
     */
    protected function getBackgrounds() : array {
        $backgrounds = $this->getColourSelectionOptions('section');
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
            $bg = 'off-white';
        }
        $bg = $this->getSupportedBackground(strval($bg));
        $spacing = DesignSystemConfiguration::get_spacing_class();
        $classes = [];
        if(!$bg) {
            if($section_class = DesignSystemConfiguration::get_element_section_class()) {
                $classes[] = $section_class;
            }
            if($spacing) {
                $classes[] = $spacing;
            }
        } else {
            $classes[] = 'nsw-section';
            $classes[] = 'nsw-section--' . $bg;
        }
        return implode(" ", $classes);
    }

    /**
     * Hook into rendering, add requirements
     * In this case add the requirement for setting a background image on the section
     */
    public function updateRenderTemplates($templates, $suffix) {
        if( ($image = $this->owner->SectionImage()) && $image->exists() ) {
            $imageURL = $image->AbsoluteLink();
            $id = $this->owner->getAnchor();
            Requirements::customCss(
                "#{$id}.nsw-section--image { background-image: url('{$imageURL}');}",
                "backgroundImageFor{$id}"
            );
        }
    }

}
