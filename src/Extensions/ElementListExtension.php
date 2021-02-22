<?php

namespace NSWDPC\Waratah\Extensions;

use SilverStripe\ORM\DataExtension;
use SilverStripe\ORM\ArrayLib;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\LiteralField;
use UncleCheese\DisplayLogic\Forms\Wrapper;
use gorriecoe\Link\Models\Link;
use gorriecoe\LinkField\LinkField;


class ElementListExtension extends DataExtension
{

    private static $db = [
        'Subtype' => 'Varchar(64)',
        'CardStyle' => 'Varchar(64)',
        'ExpandFirst' => 'Boolean'
    ];

    private static $subtypes = [
        'nsw-four-col-cards' => 'Four column cards (event listing style)',
        'nsw-three-col-card-grid' => 'Three column cards',
        'nsw-four-col-ctas' => 'Four column calls to action (coloured with icon)',
        'nsw-two-col-ctas' => 'Two column calls to action',
        'nsw-tab-panel-secondary' => 'Tab panel - horizontal with buttons',
        'nsw-tab-panel--horizontal' => 'Tab panel - horizontal',
        'nsw-tab-panel--vertical' => 'Tab panel - vertical',
        'accordion' => 'Accordion'
    ];

    private static $styles = [
        'card-small' => 'Card with image and title',
        'card-medium' => 'Card with image, title and description',
        'card-large' => 'Card with image, title, description and button',
    ];

    private static $has_one = [
        'LinkTarget' => Link::class,
    ];

    public function updateCMSFields(FieldList $fields)
    {
        $fields->removeByName(['LinkTargetID', 'ContainerClasses']);

        $subType = DropdownField::create('Subtype',_t(__CLASS__ . '.LINK','List type'),$this->owner->config()->subtypes);
        $subType->setEmptyString('none');
        $subType->setDescription("Calls to action and cards should use the Decorated Content block.");

        $expandFirst = CheckboxField::create('ExpandFirst', 'Expand first item');
        $expandFirst->displayIf('Subtype')->isEqualTo('accordion');

        $fields->addFieldsToTab(
            'Root.Settings',
            [
                $subType,

                $expandFirst,

                DropdownField::create(
                    'CardStyle',
                    _t(
                        __CLASS__ . '.LINK',
                        'Card style'
                    ),
                    $this->owner->config()->styles
                )->setEmptyString('none')
                ->displayIf('Subtype')->isEqualTo('nsw-three-col-card-grid')
                    ->end(),

                Wrapper::create(
                    LiteralField::create(
                        'CTAWarningSettings',
                        '<div class="message warning">Icon and colour are set on the linked page</div>'
                    )
                )->displayIf('Subtype')->isEqualTo('nsw-four-col-ctas')
                    ->end(),

                $this->getLinkField()

            ]
        );

    }

    protected function getLinkField() {
        $field = LinkField::create(
            'LinkTarget',
            _t(
                __CLASS__ . '.LINK',
                'Link'
            ),
            $this->owner
        );
        return $field;
    }
}
