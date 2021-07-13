<?php
namespace NSWDPC\Waratah\Extensions;

use Silverstripe\ORM\DataExtension;
use Silverstripe\Forms\FieldList;
use Silverstripe\Forms\TextField;
use Silverstripe\Assets\Image;

class ImageExtension extends DataExtension {

    private static $db = array(
        'PhotoCredit' => 'Varchar(255)'
    );
}
