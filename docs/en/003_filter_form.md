# Filter form

Turn a standard Silverstripe form into a filter form quickly using the FilterForm trait:

```php
<?php
/**
 * A filter form
 */
class SomeFilterForm extends \Silverstripe\Forms\Form
{

    use \NSWDPC\Waratah\Services\FilterFormTrait;
}
```

## Controller

```php
<?php

class MyController extends PageController {
    
    /**
     * @var array
     */
    private static $allowed_actions = [
        'SomeFilterForm',
        'doSearch'
    }
    
    /**
     * Do the filtered search
     */
    public function doSearch( $data, $form) {
        // handle the search data
        $link = $this->somePathBasedOnData($data);
        // redirect to results
        return $this->redirect( $link );
    }

    /**
     * @return SomeFilterForm
     */
    public function SomeFilterForm() : SomeFilterForm {
        $form = SomeFilterForm::create(
            $this,
            'SomeFilterForm',
            Fieldlist::create(
                TextField::create(
                    'keywords',
                    _t('myapp.SEARCH', 'Search')
                )->setAttribute('placeholder', _t('myapp.KEYWORDS', 'Keywords'))
                ->setValue( $this->request->getVar('keywords') ),
                DropdownField::create(
                    'sort',
                    _t('myapp.SORTBY', 'Sort by'),
                    [
                        'sdate' => _t('myapp.START_DATE', 'Start date'),
                        'edate' => _t('myapp.END_DATE', 'End date'),
                        'title' => _t('myapp.TITLE', 'Title')
                    ]
                )->setValue( $this->request->getVar('sort') )
                // other fields
            ),
            Fieldlist::create(
                FormAction::create(
                    'doSearch',
                    _t('myapp.SEARCH', 'Search')
                )->addExtraClass('nsw-button--primary nsw-button--full-width')
            )
        )->setLegend(
            _t('myapp.FILTER_RESULTS', 'Filter results')
        );
        return $form;
    }
    
}
```

## Template

```
// ... html
$SomeFilterForm
// ... html
```
