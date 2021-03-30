<?php

namespace NSWDPC\Waratah\Extensions;

use gorriecoe\Link\Models\Link;
use SilverStripe\Forms\FieldList;
use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\TextareaField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;


class LinkExtension extends DataExtension
{

    private static $db = [
        'Description' => 'Text'
    ];

    private static $has_one = [
        "Image" => Image::class,
    ];

    private static $allowed_file_types = ["jpg", "jpeg", "gif", "png", "webp"];

    private static $owns = ["Image"];

    public function getAllowedFileTypes()
    {
        $types = $this->owner->config()->get("allowed_file_types");
        if (empty($types)) {
            $types = ["jpg", "jpeg", "gif", "png", "webp"];
        }
        $types = array_unique($types);
        return $types;
    }

    public function updateCMSFields(FieldList $fields)
    {

        $fields->addFieldsToTab(
            'Root.Main',
            [
                TextareaField::create(
                    'Description',
                    _t(
                        __CLASS__ . '.DESCRIPTION',
                        'Description'
                    )
                )
                ->setDescription("Links to pages on this site will use its Abstract if set, otherwise you can override it here.")
                ->setTargetLength(100, 50, 150),
                UploadField::create(
                    "Image",
                    _t(__CLASS__ . ".IMAGE", "Image")
                )
                ->setAllowedExtensions($this->owner->getAllowedFileTypes())
                ->setIsMultiUpload(false)
                ->setDescription(
                    _t(
                        __CLASS__ . "ALLOWED_FILE_TYPES",
                        "Allowed file types: {types}",
                        [
                            'types' => implode(",", $this->owner->getAllowedFileTypes())
                        ]
                    )
                )
            ]
        );

    }

}
