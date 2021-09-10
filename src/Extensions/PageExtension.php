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

    /**
     * @var array
     */
    private static $allowed_file_types = ["jpg", "jpeg", "gif", "png", "webp"];

    /**
     * @var array
     */
    private static $db = [
        'Abstract' => 'Text',
        'ShowAbstractOnPage' => 'Boolean',
        'IsLandingPage' => 'Boolean',
        'ShowBannerImage' => 'Boolean'
    ];

    /**
     * @var array
     */
    private static $defaults = [
        "ShowAbstractOnPage" => 1
    ];

    /**
     * @var array
     */
    private static $has_one = [
        "Image" => Image::class
    ];

    private static $owns = ["Image"];

    public function getAllowedFileTypes()
    {
        $types = $this->owner->config()->get("allowed_file_types");
        if (empty($types)) {
            $types = ['jpg', 'jpeg', 'gif', 'png', 'webp'];
        }
        $types = array_unique($types);
        return $types;
    }

    public function updateCMSFields(FieldList $fields)
    {

        $fields->insertAfter(
            'MenuTitle',
            TextareaField::create(
                'Abstract',
                _t('nswds.ABSTRACT', 'Abstract')
            )
            ->setDescription('This will be displayed in listings and search results')
            ->setTargetLength(160, 90, 200)
        );

        $fields->insertAfter(
            'Abstract',
            CheckboxField::create(
                'ShowAbstractOnPage',
                _t('nswds.SHOWABSTRACT', 'Show abstract on the page, below the title')
            )
        );

        $fields->insertAfter(
            'ShowAbstractOnPage',
            CheckboxField::create(
                'IsLandingPage',
                _t('nswds.ISLANDINGPAGE', 'Show this page as a landing page')
            )->setDescription('This will remove any side navigation or other extras')
        );

        $fields->addFieldsToTab("Root.Image", [
            UploadField::create(
                "Image",
                _t("nswds.SLIDE_IMAGE", "Image used for social media")
            )
            ->setAllowedExtensions($this->owner->getAllowedFileTypes())
            ->setIsMultiUpload(false)
            ->setDescription(
                _t(
                    "nswds.ALLOWED_FILE_TYPES",
                    "Allowed file types: {types}",
                    [
                        'types' => implode(",", $this->owner->getAllowedFileTypes())
                    ]
                )
            ),
            CheckboxField::create(
                'ShowBannerImage',
                _t('nswds.SHOWBANNERIMAGE', 'Show this image at top of the page as a banner')
            )

        ]);

    }
}
