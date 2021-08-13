<?php

namespace NSWDPC\Waratah\Extensions;

use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use gorriecoe\Link\Models\Link;
use NSWDPC\InlineLinker\InlineLinkCompositeField;


class ElementContentExtension extends DataExtension
{

    private static $db = [
        'Subtype' => 'Varchar(64)'
    ];

    private static $subtypes = [
        'callout' => 'Callout',
        'profile' => 'Profile'
    ];

    private static $has_one = [
        'Image' => Image::class,
        'ContentLink' => Link::class,
    ];

    private static $allowed_file_types = ['jpg', 'jpeg', 'gif', 'png', 'webp'];

    private static $owns = ['Image', 'ContentLink'];

    public function getAllowedFileTypes()
    {
        $types = $this->owner->config()->get('allowed_file_types');
        if (empty($types)) {
            $types = ['jpg', 'jpeg', 'gif', 'png', 'webp'];
        }
        $types = array_unique($types);
        return $types;
    }

    public function updateCMSFields(FieldList $fields)
    {

        $fields->removeByName(['ContentLinkID']);
        $fields->addFieldsToTab(
            'Root.Settings',
            [
                DropdownField::create(
                    'Subtype',
                    _t(__CLASS__ . '.DISPLAYTYPE','Display type'),
                    $this->owner->config()->subtypes
                )
                ->setEmptyString('none'),
                UploadField::create(
                    'Image',
                    _t(__CLASS__ . '.IMAGE', 'Image')
                )
                ->setAllowedExtensions($this->owner->getAllowedFileTypes())
                ->setIsMultiUpload(false)
                ->setDescription(
                    _t(
                        __CLASS__ . 'ALLOWED_FILE_TYPES',
                        'Allowed file types: {types}',
                        [
                            'types' => implode(",", $this->owner->getAllowedFileTypes())
                        ]
                    )
                ),
                $this->getLinkField()
            ], 'ParentID'
        );

    }

    protected function getLinkField() {
        $field = InlineLinkCompositeField::create(
            'ContentLink',
            _t(
                __CLASS__ . '.LINK',
                'Link'
            ),
            $this->owner
        );
        return $field;
    }

}
