<?php

namespace NSWDPC\Waratah\Extensions;

use Silverstripe\Assets\File;
use Silverstripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use Silverstripe\ORM\DataExtension;
use Silverstripe\Forms\FieldList;
use Silverstripe\Forms\HeaderField;
use Silverstripe\Forms\CheckboxField;
use Silverstripe\Forms\TextField;
use Silverstripe\Forms\HTMLEditor\HTMLEditorField;
use gorriecoe\Link\Models\Link;
use gorriecoe\LinkField\LinkField;

class SiteConfigExtension extends DataExtension
{

    private static $db = [

        // Copyright and ownership
        'CopyrightOwner' => 'Varchar(255)',

        // GTM
        'GoogleTagManagerCode' => 'Varchar(255)',

        // global settings
        'FooterLinksCol1Title' => 'Varchar(255)',
        'FooterLinksCol2Title' => 'Varchar(255)',
        'FooterLinksCol3Title' => 'Varchar(255)',
        'FooterLinksCol4Title' => 'Varchar(255)',
        'FooterContent' => 'HTMLText',

        // Accessibility
        'EnableTextToSpeech' => 'Boolean'

    ];

    private static $has_one = [
        'Logo' => File::class
    ];

    private static $owns = [
        'Logo'
    ];

    private static $many_many = [
        'FooterLinksCol1' => Link::class,
        'FooterLinksCol2' => Link::class,
        'FooterLinksCol3' => Link::class,
        'FooterLinksCol4' => Link::class,
        'FooterLinksSub' => Link::class
    ];

    private static $many_many_extraFields = [
        'FooterLinksCol1' => ['SortOrder' => 'Int'],
        'FooterLinksCol2' => ['SortOrder' => 'Int'],
        'FooterLinksCol3' => ['SortOrder' => 'Int'],
        'FooterLinksCol4' => ['SortOrder' => 'Int'],
        'FooterLinksSub' => ['SortOrder' => 'Int'],

    ];

    public function updateCMSFields(FieldList $fields)
    {

        // rm tabs
        $fields->removeByName([
            'FooterLinksCol1',
            'FooterLinksCol2',
            'FooterLinksCol3',
            'FooterLinksCol4',
            'FooterLinksSub'
        ]);

        // add copyright notice
        $fields->addFieldsToTab(
            'Root.Main', [
                TextField::create('CopyrightOwner', 'Copyright notice'),
                UploadField::create('Logo','Logo')
            ]
        );

        // application codes and the like
        $fields->addFieldsToTab('Root.Applications', [
            HeaderField::create('ApplicationsHeader', 'Applications'),
            TextField::create('GoogleTagManagerCode', 'Google Tag Manager Code'),
        ]);

        $fields->addFieldsToTab('Root.GlobalItems', [

            HeaderField::create('GeneralContent', 'Global Content'),

            HeaderField::create('FooterNav', 'Footer navigation and content', 3),

            TextField::create('FooterLinksCol1Title', 'Footer column 1 title'),
            LinkField::create(
                'FooterLinksCol1',
                'Footer column 1 links',
                $this->owner
            )->setSortColumn('SortOrder'),

            TextField::create('FooterLinksCol2Title', 'Footer column 2 title'),
            LinkField::create(
                'FooterLinksCol2',
                'Footer column 2 links',
                $this->owner
            )->setSortColumn('SortOrder'),

            TextField::create('FooterLinksCol3Title', 'Footer column 3 title'),
            LinkField::create(
                'FooterLinksCol3',
                'Footer column 3 links',
                $this->owner
            )->setSortColumn('SortOrder'),

            TextField::create('FooterLinksCol4Title', 'Footer column 4 title'),
            LinkField::create(
                'FooterLinksCol4',
                'Footer column 4 links',
                $this->owner
            )->setSortColumn('SortOrder'),

            LinkField::create(
                'FooterLinksSub',
                'Bottom footer links',
                $this->owner
            )->setSortColumn('SortOrder'),

            HTMLEditorField::create('FooterContent', 'Footer content')->setRows(6),

        ]);

        // enable TTS library, whatever that is
        $fields->addFieldsToTab('Root.Accessibility', [
            CheckboxField::create('EnableTextToSpeech', _t('SiteConfig.ENABLE_TEXT_TO_SPEECH', 'Enable text to speech'))
        ]);
    }

}
