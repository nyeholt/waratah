<?php

namespace NSWDPC\Waratah\Extensions;

use SilverStripe\ORM\DataExtension;
use DNADesign\Elemental\Models\BaseElement;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use gorriecoe\Link\Models\Link;
use gorriecoe\LinkField\LinkField;
use NSWDPC\InlineLinker\InlineLinkCompositeField;
use UncleCheese\DisplayLogic\Forms\Wrapper;


class ElementBannerExtension extends DataExtension
{

    private static $inline_editable = false;

    private static $db = [
        'BannerStyle' => 'Varchar(64)',
        'AltStyle' => 'Boolean',
        'HTML' => 'HTMLText',
        'BannerLinksTitle' => 'Varchar(128)',
    ];

    private static $many_many = [
        'BannerLinks' => Link::class
    ];

    private static $many_many_extraFields = [
        'BannerLinks' => [
            'Sort' => 'Int'
        ]
    ];

    private static $banner_styles = [
        'title-content' => 'Title and content',
        'title-content-image' => 'Title and content - with image',
        'call-to-action' => 'Call to action',
        'call-to-action-image' => 'Call to action - with image',
        'links-list' => 'Links list'
    ];

    public function updateCMSFields(FieldList $fields)
    {

        $fields->removeByName(['BannerLinks','BannerLink']);

        $bannerStyleField = DropdownField::create(
            'BannerStyle',
            _t(__CLASS__ . '.BANNERSTYLE','Banner style'),
            $this->owner->config()->get("banner_styles")
        );
        $bannerStyleField->setEmptyString('none');

        $altStyleField =CheckboxField::create(
            'AltStyle',
            _t(__CLASS__ . '.ALTSTYLE','Show in alternative style')
        );
        $altStyleField
            ->displayUnless('BannerStyle')
            ->isEqualTo('links-list');

        $imageField = UploadField::create(
            "Image",
            _t(__CLASS__ . ".SLIDE_IMAGE", "Image")
        );
        $imageField->setAllowedExtensions($this->owner->getAllowedFileTypes());
        $imageField->setIsMultiUpload(false);
        $imageField->setDescription(
            _t(
                __CLASS__ . "ALLOWED_FILE_TYPES",
                "Allowed file types: {types}",
                [
                    'types' => implode(",", $this->owner->getAllowedFileTypes())
                ]
            )
        );
        $imageField
            ->displayIf('BannerStyle')
            ->isEqualTo('title-content-image')
            ->orIf()->isEqualTo('call-to-action-image');

        $linkField = Wrapper::create(InlineLinkCompositeField::create(
            'BannerLink',
            _t(
                __CLASS__ . 'LINK', 'Link'
            ),
            $this->owner
        ));
        $linkField
            ->displayIf('BannerStyle')
            ->isEqualTo('call-to-action')
            ->orIf()->isEqualTo('call-to-action-image');

        $linksFieldTitle = TextField::create(
            'BannerLinksTitle',
            _t(__CLASS__ . '.LINKSTITLE','Links title'),
        );
        $linksFieldTitle
            ->displayIf('BannerStyle')
            ->isEqualTo('links-list');

        $linksField = LinkField::create(
            'BannerLinks',
            _t(__CLASS__ . '.LINKS','Links'),
            $this->owner
        );
        $linksField->setSortColumn('Sort');
        $linksField
            ->displayIf('BannerStyle')
            ->isEqualTo('links-list');

        $contentField = HTMLEditorField::create(
            'HTML',
            _t(
                __CLASS__ . '.HTML',
                'Content'
            )
        );
        $contentField->setRows(6);


        $fields->addFieldsToTab("Root.Main", [
            $bannerStyleField,
            $altStyleField,
            $contentField,
            $imageField,
            $linkField,
            $linksFieldTitle,
            $linksField
        ]);

    }

    public function onBeforeWrite()
    {
        parent::onBeforeWrite();
        if ($this->owner->BannerStyle == 'links-list') {
            $this->owner->AltStyle = 1;
        }
    }

}
