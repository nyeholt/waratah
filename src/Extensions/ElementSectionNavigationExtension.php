<?php

namespace NSWDPC\Waratah\Extensions;

use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\DropdownField;

class ElementSectionNavigationExtension extends DataExtension
{

    /**
     * @var array
     */
    private static $db = [
        'CardColumns' => 'Varchar(64)',
        'CardStyle' => 'Varchar(64)'
    ];

    /**
     * @var array
     */
    private static $card_columns = [
        '2' => 'Two',
        '3' => 'Three',
        '4' => 'Four',
    ];

    /**
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

        $cardColumns = DropdownField::create('CardColumns',_t(__CLASS__ . '.CARDCOLUMNS','Card columns'),$this->owner->config()->card_columns);
        $cardColumns->setEmptyString('none');

        $cardStyle = DropdownField::create('CardStyle',_t(__CLASS__ . '.CARDSTYLE','Card style'),$this->owner->config()->card_styles);
        $cardStyle->setEmptyString('none');

        $fields->addFieldsToTab(
            'Root.Main',
            [
                $cardColumns,
                $cardStyle
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
