<?php

namespace NSWDPC\Waratah\Extensions;

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
        $showLastUpdated = Config::inst()->get(\Page::class, 'show_last_updated');
        $disableDateOnPage = $this->owner->DisableLastUpdated;
        if (!$showLastUpdated || ($disableDateOnPage)) {
            return false;
        } else {
            $format =  Config::inst()->get(\Page::class, 'last_updated_format');
            $date = $this->owner->dbObject('LastEdited');
            $publicDateOnPage = $this->owner->dbObject('PublicLastUpdated');
            $displayDate = $publicDateOnPage ? $publicDateOnPage : $date;
            return $displayDate->Format($format);
        }

    }

}
