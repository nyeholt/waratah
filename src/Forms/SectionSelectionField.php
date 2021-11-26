<?php

namespace NSWDPC\Waratah\Forms;

use NSWDPC\Waratah\Traits\DesignSystemSelections;
use SilverStripe\Forms\DropdownField;

/**
 * Provide selection options for section backgrounds
 * @author James
 */
class SectionSelectionField extends DropdownField
{

    use DesignSystemSelections;

    /**
     * @inheritdoc
     */
    public function __construct($name, $title = null, $source = [], $value = null)
    {
        $source = $this->getSource();
        $this->setEmptyString(_t('nswds.SELECT', 'Select'));
        parent::__construct($name, $title, $source, $value);
    }

    /**
     *
     * @inheritdoc
     */
    public function getSource()
    {
        $this->source = $this->getColourSelectionOptions('section');
        return parent::getSource();
    }

}
