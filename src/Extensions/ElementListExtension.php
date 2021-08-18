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

    /**
     * DB fields for the list element
     * @var array
     */
    private static $db = [
        'Subtype' => 'Varchar(64)',
        'CardColumns' => 'Varchar(64)',
        'CardStyle' => 'Varchar(64)'
    ];

    /**
     * Available types of listings
     * @var array
     */
    private static $subtypes = [
        'accordion' => 'Accordion',
        'cards' => 'Cards',
        'grid' => 'Grid',
        'linklist' => 'Link list',
        'listitem' => 'List items',
        'tabs' => 'Tabs',
    ];

    /**
     * Available columns
     * @var array
     */
    private static $card_columns = [
        '1' => 'One',
        '2' => 'Two',
        '3' => 'Three',
        '4' => 'Four',
        '6' => 'Six'
    ];

    /**
     * Default values
     * @var array
     */
    private static $defaults = [
        'Subtype' => '',// no default
        'CardColumns' => 4
    ];

    /**
     * Used to set how list child elements are rendered
     * @var array
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
     * This method is retained for BC
     */
    public function getColumns() {
        return $this->owner->ColumnClass( $this->owner->CardColumns );
    }

    /**
     * Return the CSS class representing a grid
     * @param string $lg the number of large columns eg 3. An empty string, the default defers to the selected CardColumns value
     * @param int $max the max grid size. Used to work out the CSS class. $max/$lg =  grid 'width'
     * @param int $xs number of columns at XS media size, default = 1 col @ 100% width
     * @param int $sm number of columns at SM media size, default = 2 cols @ 50% width
     * @param int $sm number of columns at MD media size, default = 3 cols @ 33.3% width
     */
    public function ColumnClass($lg = '', $max = 12, $xs = 1, $sm = 2, $md = 3) : string
    {
        // If there are no override columns from code, use the saved field value
        $lg = trim($lg);
        if($lg) {
            $columns = $lg;
        } else {
            $columns = $this->owner->CardColumns;
        }

        $max = trim($max);
        if(!$max) {
            $max = 12;
        }

        if(!$columns) {
            return '';
        } else {
            // round to nearest
            $gridLg = ceil($max / $columns);
            $gridXs = ceil($max / $xs);
            $gridSm = ceil($max / $sm);
            $gridMd = ceil($max / $md);
            return " nsw-col-xs-{$gridXs} nsw-col-sm-{$gridSm} nsw-col-md-{$gridMd} nsw-col-lg-{$gridLg}";
        }

    }

}
