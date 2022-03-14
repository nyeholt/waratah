<?php

namespace NSWDPC\Waratah\Services;

use SilverStripe\Core\Extension;
use SilverStripe\Forms\Form;

/**
 * When creating a custom Form, apply this trait
 * the nswds them will apply the appropriate classes
 * See also {@link NSWDPC\Waratah\FilterFormExtension}
 * @author James
 */
trait FilterFormTrait {

    /**
     * @var int|null
     */
    public $filterFormResultCount = null;

    /**
     * @var bool
     */
    public $isFilterForm = true;

    /**
     * @var string
     */
    public function getTemplate()
    {
        return 'nswds/FilterForm';
    }

    /**
     * Return the form this trait is applied to
     * @return Form
     */
    protected function getExtendedForm() : Form {
        return $this;
    }

    /**
     * Allow runtime overriding of isFilterForm
     * @param bool
     */
    public function setIsFilterForm(bool $is) : Form {
        $this->getExtendedForm()->isFilterForm = $is;
        return $this->getExtendedForm();
    }

    /**
     * @return bool
     */
    public function IsFilterForm() : bool {
        return $this->getExtendedForm()->isFilterForm;
    }

    /**
     * A filter form can have results if it has a result count of zero or more
     * Zero results can signify a filtering result
     */
    public function HasFilterResults($arg = '') : bool {
        $resultCount = $this->getExtendedForm()->filterFormResultCount;
        $has = is_int($resultCount) && $resultCount >= 0;
        return $has;
    }

    /**
     * Set the result count,
     */
    public function FilterFormResultCount() : ?int {
        $result = $this->getExtendedForm()->filterFormResultCount;
        return $result;
    }

    /**
     * Set the result count,
     */
    public function setFilterFormResultCount(int $resultCount) : Form {
        if($resultCount < 0) {
            $resultCount = 0;
        }
        $this->getExtendedForm()->filterFormResultCount = $resultCount;
        return $this->getExtendedForm();
    }

    /**
     * Add filters to form extra classes
     *
     * @return string
     */
    public function extraClass()
    {
        if($this instanceof Form) {
            // gather any parent classes
            $extraClass = parent::extraClass();
            $extraClasses = explode(' ', $extraClass);
        } else {
            $extraClasses = [];
        }
        $extraClasses[] = 'nsw-filters';
        $extraClasses[] = 'nsw-filters--fixed';
        $extraClasses[] = 'js-filters';
        return implode(' ', array_unique($extraClasses));
    }

}
