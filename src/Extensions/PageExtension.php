<?php

namespace NSWDPC\Waratah\Extensions;

use Page;
use Silverstripe\ORM\DataExtension;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;

class PageExtension extends DataExtension
{

    private static $allowed_file_types = ["jpg", "jpeg", "gif", "png", "webp"];

    private static $folder_name = "images";

    private static $db = [
        'Abstract' => 'Text',
        'IsLandingPage' => 'Boolean',
        'ShowBannerImage' => 'Boolean'
    ];

    private static $has_one = [
        "Image" => Image::class
    ];

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

    public function getFolderName() {
        $folder_name = $this->owner->config()->get('folder_name');
        if(!$folder_name) {
            $folder_name = "images";
        }
        return $folder_name;
    }
    public function updateCMSFields(FieldList $fields)
    {

        $fields->addFieldToTab(
            'Root.Main',
                TextareaField::create(
                    'Abstract',
                    _t(__CLASS__. '.ABSTRACT', 'Abstract')
                )
                ->setDescription('This will show at the top of the page, and also be displayed in listings and search results')
                ->setTargetLength(160, 90, 200),
                'Content'
        );

        $fields->addFieldToTab(
            'Root.Main',
                CheckboxField::create(
                    'IsLandingPage',
                    _t(__CLASS__. '.ISLANDINGPAGE', 'Show this page as a landing page')
                )->setDescription('This will remove any side navigation or other extras'),
                'Abstract'
        );

        $fields->addFieldsToTab("Root.Image", [
            UploadField::create(
                "Image",
                _t(__CLASS__ . ".SLIDE_IMAGE", "Image used for social media")
            )
            ->setFolderName($this->owner->getFolderName() . "/" . $this->owner->ID)
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
            ),
            CheckboxField::create(
                'ShowBannerImage',
                _t(__CLASS__. '.SHOWBANNERIMAGE', 'Show this image at top of the page as a banner')
            )

        ]);

    }
}
