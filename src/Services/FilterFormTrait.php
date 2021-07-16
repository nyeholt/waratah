<?php

namespace NSWDPC\Waratah\Services;

/**
 * When creating a custom Form, apply this trait
 * the nswds them will apply the appropriate classes
 */
trait FilterFormTrait {

    /**
     * @var bool
     */
    protected $isFilterForm = true;

    /**
     * @var string
     */
    public function getTemplate()
    {
        return 'nswds/FilterForm';
    }

    /**
     * Allow runtime overriding of isFilterForm
     * @param bool
     */
    public function setIsFilterForm(bool $is) {
        $this->isFilterForm = $is;
    }

    /**
     * @return bool
     */
    public function IsFilterForm() : bool {
        return $this->isFilterForm;
    }

    /**
     * Add filters to form extra classes
     *
     * @return string
     */
    public function extraClass()
    {
        $this->extraClasses[] = 'nsw-filters';
        $this->extraClasses[] = 'nsw-filters--fixed';
        $this->extraClasses[] = 'js-filters';
        return implode(' ', array_unique($this->extraClasses));
    }

}
