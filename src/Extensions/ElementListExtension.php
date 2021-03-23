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
use NSWDPC\InlineLinker\InlineLinkCompositeField;


class ElementListExtension extends DataExtension
{

    private static $db = [
        'Subtype' => 'Varchar(64)',
        'CardStyle' => 'Varchar(64)',
        'ExpandFirst' => 'Boolean'
    ];

    private static $subtypes = [
        'cards' => 'Three column cards',
        'accordion' => 'Accordion',
        'tabs' => 'Tabs'
    ];

    private static $styles = [
        'title-only' => 'Title only',
        'title-abstract' => 'Title and abstract',
        'title-tag-date-abstract' => 'Title, tag, date and abstract',
        'headline-image-tag-date-abstract' => 'Title, image, tag, date and abstract',
    ];

    private static $has_one = [
        'ListLink' => Link::class,
    ];

    public function updateCMSFields(FieldList $fields)
    {
        $fields->removeByName(['ListLinkID', 'ContainerClasses']);

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
                ->displayIf('Subtype')->isEqualTo('cards')
                ->end(),

                $this->getLinkField()

            ]
        );

    }

    protected function getLinkField() {
        $field = InlineLinkCompositeField::create(
            'ListLink',
            _t(
                __CLASS__ . '.LINK',
                'Link'
            ),
            $this->owner
        );
        return $field;
    }
}
