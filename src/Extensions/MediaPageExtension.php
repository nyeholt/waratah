<?php

namespace NSWDPC\Waratah\Extensions;

use SilverStripe\ORM\DataExtension;
use nglasl\mediawesome\MediaPage;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\ListboxField;


class MediaPageExtension extends DataExtension {

    private static $has_one = [
        'ParentMediaPage' => MediaPage::class
    ];

    private static $has_many = [
        'RelatedMediaPages' => MediaPage::class
    ];

    public function updateCMSFields(FieldList $fields)
    {

        $fields->removeByName('ParentMediaPage');

        $fields->insertAfter(
            'MenuTitle',
            ListboxField::create(
                'RelatedMediaPages',
                _t(
                    __CLASS__ . 'RELATED_PAGES', 'Choose related media pages'
                ),
                $this->getAvailableMediaPages()
            )->setDescription('These pages will be hidden from the media holder listing, and shown on this media page as related items.'),
        );

    }

    public function getAvailableMediaPages() {
        $mediaHolderID = $this->owner->ParentID;
        $mediaPages = MediaPage::get()->exclude('ID', $this->owner->ID)->filter('ParentID', $mediaHolderID)->sort('Title', 'ASC');
        return $mediaPages;
    }

    public function getSortedRelatedMediaPages() {
        return $this->owner->RelatedMediaPages()->sort('Title', 'ASC');
    }

    public function getRecentPosts()
    {
        $mediaHolderID = $this->owner->ParentID;
        $mediaPages = MediaPage::get()->filter('ParentID', $mediaHolderID)->sort('Date', 'DESC');

        if ($mediaPages)
        {
          return $mediaPages->limit(4);
        }

        return null;
    }

}
