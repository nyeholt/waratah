<?php

namespace NSWDPC\Waratah\Extensions;

use Page;
use SilverStripe\Core\Extension;
use SilverStripe\Core\Config\Config;

class PageControllerExtension extends Extension
{

    public function ElementNav($position = null)
    {
        $elementArea = $this->owner->ElementalArea();

        if (!$elementArea || !$elementArea->exists()) {
            return false;
        }

        $list = $elementArea->Elements()->filter([
            'ShowInMenus' => 1
        ]);

        if ($list->count()) {
            return $list;
        } else {
            return false;
        }

    }

    public function LastUpdated()
    {
        $showLastEdited = Config::inst()->get(Page::class, 'show_last_updated');
        $format =  Config::inst()->get(Page::class, 'last_updated_format');
        $date = $this->owner->dbObject('LastEdited');
        $disableDateOnPage = $this->owner->DisableLastUpdated;
        $publicDateOnPage = $this->owner->dbObject('PublicLastUpdated');
        $displayDate = $publicDateOnPage ? $publicDateOnPage : $date;

        if (!$showLastEdited || ($disableDateOnPage)) {
            return false;
        } else {
            return $displayDate->Format($format);
        }

    }

}
