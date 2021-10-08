<?php

namespace NSWDPC\Waratah\Models;

use DNADesign\Elemental\Models\ElementContent;
use SilverStripe\Security\Permission;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\File;
use Silverstripe\Assets\Image;
use SilverStripe\Forms\LiteralField;
use gorriecoe\Link\Models\Link;
use gorriecoe\LinkField\LinkField;

/**
 * @author mark.taylor@dpc.nsw.gov.au
 */
class ElementalFeature extends ElementContent
{

    private static $inline_editable = false;

    private static $table_name = 'ElementalFeature';

    private static $singular_name = 'Featured content block';

    private static $plural_name = 'Featured content blocks';

    private static $description = 'Create a featured content block';

    private static $has_one = [
        'IconSVG' => File::class,
        'IconImage' => Image::class
    ];

    private static $many_many = [
        'Links' => Link::class
    ];

    private static $many_many_extraFields = [
        'Links' => [
            'Sort' => 'Int'
        ]
    ];

    private static $owns = ['IconSVG','IconImage'];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->removeByName(['Links','Subtype','IconSVG','IconImage']);

        $fields->fieldByName('Root.Main.HTML')->setRows(12);

        $fields->addFieldToTab('Root.Main', LinkField::create('Links', 'Links', $this), 'ParentID');

        $admin = Permission::check('ADMIN');
        if($admin) {
            $fields->insertAfter('ContentImage', UploadField::create('IconSVG','SVG version of icon'));
            $fields->insertAfter('IconSVG', UploadField::create('IconImage','Image version of icon'));
        }


        return $fields;
    }

    public function getType()
    {
        return _t(__CLASS__ . '.BlockType', 'Featured content');
    }

}
