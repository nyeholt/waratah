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
        'CardColumns' => 'Varchar(64)',
        'CardStyle' => 'Varchar(64)',
        'ExpandFirst' => 'Boolean'
    ];

    private static $subtypes = [
        'cards' => 'Cards',
        'accordion' => 'Accordion',
        'tabs' => 'Tabs'
    ];

    private static $card_columns = [
        '2' => 'Two',
        '3' => 'Three',
        '4' => 'Four',
    ];

    private static $card_styles = [
        'title' => 'Title only',
        'title-abstract' => 'Title and abstract',
        'title-image-abstract' => 'Title, image, abstract',
    ];

    public function updateCMSFields(FieldList $fields)
    {

        $subType = DropdownField::create('Subtype',_t(__CLASS__ . '.LISTTYPE','List type'),$this->owner->config()->subtypes);
        $subType->setEmptyString('none');

        $cardColumns = DropdownField::create('CardColumns',_t(__CLASS__ . '.CARDCOLUMNS','Card columns'),$this->owner->config()->card_columns);
        $cardColumns->setEmptyString('none');
        $cardColumns->displayIf('Subtype')->isEqualTo('cards');

        $cardStyle = DropdownField::create('CardStyle',_t(__CLASS__ . '.CARDSTYLE','Card style'),$this->owner->config()->card_styles);
        $cardStyle->setEmptyString('none');
        $cardStyle->displayIf('Subtype')->isEqualTo('cards');

        $expandFirst = CheckboxField::create('ExpandFirst', 'Expand first item');
        $expandFirst->displayIf('Subtype')->isEqualTo('accordion');

        $fields->addFieldsToTab(
            'Root.Settings',
            [
                $subType,
                $cardColumns,
                $cardStyle,
                $expandFirst
            ]
        );

    }

    public function getColumns()
    {
        $columns = $this->owner->CardColumns;

        if ($columns == 2) {
            return "nsw-col-sm-6";
        }
        if ($columns == 3) {
            return "nsw-col-md-4";
        }
        if ($columns == 4) {
            return "nsw-col-sm-6 nsw-col-md-4 nsw-col-lg-3";
        }

        return false;

    }

}
