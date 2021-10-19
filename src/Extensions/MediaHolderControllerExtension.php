<?php

namespace NSWDPC\Waratah\Extensions;

use SilverStripe\ORM\DataExtension;
use nglasl\mediawesome\MediaPage;
use SilverStripe\ORM\ArrayList;

class MediaHolderControllerExtension extends DataExtension {


    public function PaginatedChildrenWithoutRelated($limit = 10, $sort = 'Date', $order = 'DESC')
    {
        return $this->owner->getPaginatedChildren($limit, $sort, $order)->exclude('ParentMediaPageID:not', 0);
    }

}
