# Filter form

Turn a standard Silverstripe form into a [NSWDS Filter Form](https://digitalnsw.github.io/nsw-design-system/components/filters/index.html) quickly using the `FilterForm` trait.

How your application filters requests and displays results is entirely up to you. The recommended result layout is a [list item](https://digitalnsw.github.io/nsw-design-system/templates/search/filters.html) template.


```php
<?php

namespace MyProject;

use Silverstripe\Forms\Form;

/**
 * A filter form
 */
class SomeFilterForm extends Form
{

    use \NSWDPC\Waratah\Services\FilterFormTrait;
    
    /**
     * Clear link used for filter form
     */
    public function ClearLink() : string {
        return $this->controller->Link();
    }

}
```

## Controller

```php
<?php

namespace MyProject;

use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\Form;
use SilverStripe\Forms\FormAction;
use SilverStripe\Forms\Fieldlist;
use SilverStripe\Forms\TextField;

/**
 * This controller provides a form to help with searching for something
 */
class MyController extends \PageController {
    
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
        // process the input data and return a URL that will show filtered results
        $link = $this->somePathBasedOnData($data);
        // redirect to the URL
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

In the template used by `MyController`, add the following to render the form:

```
// ... html
$SomeFilterForm
// ... html
```
