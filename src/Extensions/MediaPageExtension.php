<?php

namespace NSWDPC\Waratah\Extensions;

use SilverStripe\ORM\DataExtension;
use nglasl\mediawesome\MediaPage;

class MediaPageExtension extends DataExtension {

    public function getRecentPosts()
    {
        $mediaHolderID = $this->owner->ParentID;
        $mediaPages = MediaPage::get()->sort('Date', 'DESC')->filter('ParentID', $mediaHolderID);

        if ($mediaPages)
        {
          return $mediaPages->limit(4);
        }

        return null;
    }

}
