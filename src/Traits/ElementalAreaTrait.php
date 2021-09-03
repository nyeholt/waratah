<?php

namespace NSWDPC\Waratah\Traits;

use DNADesign\Elemental\Models\ElementalArea;

/**
 * Define common methods for ElementalArea subclasses
 * The set of defaults mirrors those that would be expected if using the base ElementalArea::class
 * These methods can be accessible from templates in the element scope via {$Parent.IsSideArea}
 * @author James
 */
trait ElementalAreaTrait {

    /**
     * @return DBHTMLText
     */
    public function forTemplate()
    {
        return $this->renderWith(ElementalArea::class);
    }

    /**
     * Whether this elemental area is a side element area
     */
    public function IsSideArea() : bool {
        return false;
    }

    /**
     * Whether this elemental area is a top element area
     */
    public function IsTopArea() : bool  {
        return false;
    }

    /**
     * Whether this elemental area allows containers
     */
    public function AllowContainer() : bool  {
        return false;
    }

    /**
     * Whether this elemental area allows section modification
     * eg. addition of nsw-section--**
     */
    public function AllowSectionModification() : bool  {
        return false;
    }

    /**
     * Whether to render elements in this area directly, without holder decorations
     * This can be used for instance when an Element defines it's own template that is a direct child of the ElementalArea
     */
    public function RenderElementDirectly() {
        return false;
    }
}
