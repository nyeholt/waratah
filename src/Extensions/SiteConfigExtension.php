<?php

namespace NSWDPC\Waratah\Extensions;

use Silverstripe\Assets\File;
use Silverstripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use Silverstripe\ORM\DataExtension;
use SilverStripe\Security\Permission;
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
        'LogoSVG' => File::class,
        'LogoImage' => File::class
    ];

    private static $owns = [
        'LogoSVG',
        'LogoImage'
    ];

    private static $many_many = [
        'FooterLinksCol1' => Link::class,
        'FooterLinksCol2' => Link::class,
        'FooterLinksCol3' => Link::class,
        'FooterLinksCol4' => Link::class,
        'FooterLinksSub' => Link::class,
        'SocialLinks' => Link::class
    ];

    private static $many_many_extraFields = [
        'FooterLinksCol1' => ['Sort' => 'Int'],
        'FooterLinksCol2' => ['Sort' => 'Int'],
        'FooterLinksCol3' => ['Sort' => 'Int'],
        'FooterLinksCol4' => ['Sort' => 'Int'],
        'FooterLinksSub' => ['Sort' => 'Int'],
        'SocialLinks' => ['Sort' => 'Int']
    ];

    public function updateCMSFields(FieldList $fields)
    {

        // rm tabs
        $fields->removeByName([
            'FooterLinksCol1',
            'FooterLinksCol2',
            'FooterLinksCol3',
            'FooterLinksCol4',
            'FooterLinksSub',
            'SocialLinks'
        ]);

        // add copyright notice
        $fields->addFieldsToTab(
            'Root.Main', [
                TextField::create('CopyrightOwner', 'Copyright notice')
            ]
        );

        $admin = Permission::check('ADMIN');
        if($admin) {
            $fields->addFieldsToTab(
                'Root.Main', [
                    UploadField::create('LogoSVG','SVG version of site logo'),
                    UploadField::create('LogoImage','Image version of site logo')
                ]
            );
        }

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
            )->setSortColumn('Sort'),

            TextField::create('FooterLinksCol2Title', 'Footer column 2 title'),
            LinkField::create(
                'FooterLinksCol2',
                'Footer column 2 links',
                $this->owner
            )->setSortColumn('Sort'),

            TextField::create('FooterLinksCol3Title', 'Footer column 3 title'),
            LinkField::create(
                'FooterLinksCol3',
                'Footer column 3 links',
                $this->owner
            )->setSortColumn('Sort'),

            TextField::create('FooterLinksCol4Title', 'Footer column 4 title'),
            LinkField::create(
                'FooterLinksCol4',
                'Footer column 4 links',
                $this->owner
            )->setSortColumn('Sort'),

            LinkField::create(
                'FooterLinksSub',
                'Bottom footer links',
                $this->owner
            )->setSortColumn('Sort'),

            LinkField::create(
                'SocialLinks',
                'Social Media links',
                $this->owner
            )->setSortColumn('Sort'),

            HTMLEditorField::create('FooterContent', 'Footer content')->setRows(6),

        ]);

        // enable TTS library, whatever that is
        $fields->addFieldsToTab('Root.Accessibility', [
            CheckboxField::create('EnableTextToSpeech', _t('SiteConfig.ENABLE_TEXT_TO_SPEECH', 'Enable text to speech'))
        ]);
    }

}
