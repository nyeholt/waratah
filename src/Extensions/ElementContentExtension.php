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
use NSWDPC\Elemental\Models\DecoratedContent\ElementDecoratedContent;

/**
 * Quick migration of ImageID->ContentImageID
 * This avoids collisions with historical usage of ElementDecoratedContent.Image
 * mysql> UPDATE ElementContent SET ContentImageID = ImageID WHERE ImageID <> 0;
 * mysql> ALTER TABLE ElementContent DROP COLUMN ImageID;
 */
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
        'ContentImage' => Image::class,//avoid collision with ElementDecoratedContent
        'ContentLink' => Link::class,
    ];

    private static $allowed_file_types = ['jpg', 'jpeg', 'gif', 'png', 'webp'];

    private static $owns = ['ContentImage', 'ContentLink'];

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

        /**
         * these fields are not applied to the ElementDecoratedContent
         * a subclass of ElementContent
         */
        if($this->owner instanceof ElementDecoratedContent) {
            $fields->removeByName(['ContentLinkID','ContentLink','ContentImageID','ContentImageID']);
            return;
        }

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
                    'ContentImage',
                    _t(__CLASS__ . '.IMAGE', 'Content Image')
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
