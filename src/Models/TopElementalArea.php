<?php

namespace NSWDPC\Waratah\Models;

use DNADesign\Elemental\Models\ElementalArea;
use NSWDPC\Waratah\Traits\ElementalAreaTrait;

/**
 * Define a set of rules for elements contained in this "top" area
 * @author James
 */
class TopElementalArea extends ElementalArea
{
    use ElementalAreaTrait;

    /**
     * This is the top area
     */
    public function IsSideArea() : bool  {
        return false;
    }

    /**
     * This is the top area
     */
    public function IsTopArea() : bool  {
        return true;
    }

    /**
     * Top doesn't allow nsw-container
     */
    public function AllowContainer() : bool  {
        return false;
    }

    /**
     * Doesn't allow sections
     * eg. addition of nsw-section--**
     */
    public function AllowSectionModification() : bool {
        return false;
    }

    /**
     * The top area allows elements to render themselves without decorations being applied
     * in the holder
     */
    public function RenderElementDirectly() {
        return true;
    }
}
