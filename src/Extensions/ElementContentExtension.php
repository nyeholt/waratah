<?php

namespace NSWDPC\Waratah\Extensions;

use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use gorriecoe\Link\Models\Link;
use NSWDPC\InlineLinker\InlineLinkCompositeField;

class ElementContentExtension extends DataExtension {

    private static $db = [
        'Subtitle' => 'Varchar(255)',
        'IconClass' => 'Varchar(64)',
    ];

    private static $has_one = [
        'ElementImage' => Image::class,
        'ElementLink' => Link::class
    ];

    private static $owns = [
        'ElementImage',
        'ElementLink'
    ];

    /**
     * Defines a default list of filters for the search context
     * @var array
     */
    private static $searchable_fields = [
        'HTML'
    ];

    public function updateCMSFields(FieldList $fields)
    {
        $fields->addFieldsToTab(
            'Root.Main',
            [
                TextField::create(
                    'Subtitle',
                    _t(__CLASS__ . '.SUBTITLE', 'Subtitle')
                ),
                UploadField::create(
                    'ElementImage',
                    _t(__CLASS__ . '.IMAGE', 'Image')
                )->setTitle(
                    _t(
                        __CLASS__ . '.ADD_IMAGE_TO_CONTENT_BLOCK',
                        'Add an image related to this content'
                    )
                )->setFolderName('blocks/content/' . $this->owner->ID)
                ->setAllowedMaxFileNumber(1)
                ->setIsMultiUpload(false),
                InlineLinkCompositeField::create(
                    'ElementLink',
                    _t(__CLASS__ . '.LINK', 'Link'),
                    $this->owner
                )
            ]
        );
        $fields->addFieldsToTab(
            'Root.Settings',
            [
                TextField::create(
                    'IconClass',
                    _t(__CLASS__ . '.ICON_CLASS', 'Alternative icon class')
                )
            ]
        );
    }

}
