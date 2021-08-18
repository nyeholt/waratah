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
        'CardStyle' => 'Varchar(64)'
    ];

    private static $subtypes = [
        'accordion' => 'Accordion',
        'cards' => 'Cards',
        'grid' => 'Grid',
        'linklist' => 'Link list',
        'listitem' => 'List items',
        'tabs' => 'Tabs',
    ];

    private static $card_columns = [
        '1' => 'One',
        '2' => 'Two',
        '3' => 'Three',
        '4' => 'Four',
        '6' => 'Six'
    ];

    private static $defaults = [
        'Subtype' => '',// no default
        'CardColumns' => 4
    ];

    /**
     * @var array
     * @todo check deprecation status?
     */
    private static $card_styles = [
        'title' => 'Title only',
        'title-abstract' => 'Title and abstract',
        'title-image-abstract' => 'Title, image, abstract',
        'promo' => 'Promo'
    ];

    public function updateCMSFields(FieldList $fields)
    {

        $subType = DropdownField::create('Subtype',_t(__CLASS__ . '.LISTTYPE','List type'),$this->owner->config()->subtypes);
        $subType->setEmptyString('none');

        $cardColumns = DropdownField::create('CardColumns',_t(__CLASS__ . '.COLUMNS','Columns'),$this->owner->config()->card_columns);
        $cardColumns->setEmptyString('none');
        $cardColumns->displayIf('Subtype')->isEqualTo('cards')->orIf()->isEqualTo('grid');

        $cardStyle = DropdownField::create('CardStyle',_t(__CLASS__ . '.CARDSTYLE','Card style'),$this->owner->config()->card_styles);
        $cardStyle->setEmptyString('none');
        $cardStyle->displayIf('Subtype')->isEqualTo('cards');

        $fields->addFieldsToTab(
            'Root.Settings',
            [
                $subType,
                $cardColumns,
                $cardStyle
            ]
        );

    }

    /**
     * Get the large grid columns, as a CSS class or classes
     */
    public function getColumns($large_max = 12, $xs = 1, $sm = 2, $md = 3) : string
    {
        $columns = $this->owner->CardColumns;

        $max = trim($large_max);
        if(!$max) {
            $max = 12;
        }

        if(!$columns) {
            return '';
        } else {
            // round to nearest
            $gridLg = round($max / $columns);
            $gridXs = round($max / $xs);
            $gridSm = round($max / $sm);
            $gridMd = round($max / $md);
            return "nsw-col-xs-{$gridXs} nsw-col-sm-{$gridSm} nsw-col-md-{$gridMd} nsw-col-lg-{$gridLg}";
        }

    }

}
