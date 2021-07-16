<?php

namespace NSWDPC\Waratah\Extensions;

use SilverStripe\Core\Extension;
use SilverStripe\Forms\FieldList;
use Silverstripe\Forms\TextField;

class ImageAssetFormFactoryExtension extends Extension
{

    public function updateFormFields(FieldList $fields)
    {
        $fields->insertAfter(
            'Title',
            TextField::create('PhotoCredit', 'Photo credit/copyright')
        );
    }
}
