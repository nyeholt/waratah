<?php

namespace NSWDPC\Waratah\Extensions;

use SilverStripe\ORM\DataExtension;

class MediaHolderControllerExtension extends DataExtension {


//     public function PaginatedChildrenWithoutRelated($limit = 12, $sort = 'Date', $order = 'DESC')
//     {
//         return $this->owner->getPaginatedChildren($limit, $sort, $order)->exclude('ParentMediaPageID:not', 0);
//
//     }

    public function updatePaginatedChildren($children)
    {
        $children = $children->exclude('ParentMediaPageID:not', 0);

    }


}
