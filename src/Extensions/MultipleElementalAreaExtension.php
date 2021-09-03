<?php

namespace NSWDPC\Waratah\Extensions;

use DNADesign\Elemental\Models\ElementalArea;
use NSWDPC\Waratah\Models\SideElementalArea;
use NSWDPC\Waratah\Models\TopElementalArea;
use NSWDPC\Elemental\Models\Banner\ElementBanner;
use NSWDPC\Elemental\Models\ExtensibleSearch\ElementalExtensibleSearch;
use Silverstripe\Core\Convert;
use Silverstripe\ORM\DataExtension;
use Silverstripe\ORM\DB;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\Tab;

class MultipleElementalAreaExtension extends DataExtension
{
    /**
     * @var array
     */
    private static $has_one = [
        'SideElementalArea' => ElementalArea::class,
        'TopElementalArea' => ElementalArea::class,
    ];

    /**
     * Publish elements when page published
     */
    private static $owns = [
        'SideElementalArea',
        'TopElementalArea'
    ];

    /**
     *
     * When we duplicate the page, we also want to duplicate the Elemental Area and Blocks
     */
    private static $cascade_duplicates = [
        'SideElementalArea',
        'TopElementalArea'
    ];

    /**
     * @var array
     */
    private static $allowed_side_elements = [];

    /**
     * @var array
     */
    private static $allowed_top_elements = [
        ElementBanner::class => '',
        ElementalExtensibleSearch::class => ''
    ];

    /**
     * @var mixed
     */
    private $_cache_has_side_elements = null;

    /**
     * @var mixed
     */
    private $_cache_has_top_elements = null;

    /**
     * Ensure the records are correctly applied, when the owner is saved
     * As ensureElementalAreasExist creates ElementalArea classes only and not a subclass
     */
    public function onAfterWrite() {
        parent::onAfterWrite();
        $this->ensureCorrectSettings();
    }

    /**
     * Whenever this record is written, ensure the correct settings are applied
     * @access private
     */
    private function ensureCorrectSettings() {

        // Settings for side area
        $side = $this->owner->SideElementalArea();
        if(!empty($side->ID)) {
            $side->IsSideArea = 1;
            $side->IsTopArea = 0;
            $side->AllowContainer = 0;
            $side->AllowSectionModification = 0;
            $side->RenderElementDirectly = 1;
            $side->write();
        }

        // Settings for top area
        $top = $this->owner->TopElementalArea();
        if(!empty($side->ID)) {
            $top->IsSideArea = 0;
            $top->IsTopArea = 1;
            $top->AllowContainer = 0;
            $top->AllowSectionModification = 0;
            $top->RenderElementDirectly = 1;
            $top->write();
        }

    }

    /**
     * Ensure classnames are correct, as ensureElementalAreasExist creates ElementalArea classes
     */
    public function requireDefaultRecords() {

        $sql = "UPDATE ElementalArea ea"
            . " JOIN Page p ON p.SideElementalAreaID = ea.ID "
            . " SET ea.IsSideArea = 1, ea.IsTopArea = 0, ea.AllowContainer = 0, ea.AllowSectionModification = 0, ea.RenderElementDirectly = 1";
        DB::query($sql);
        DB::alteration_message("Ensure draft SideElementArea records have correct settings " . DB::affected_rows(), 'changed');

        $sql = "UPDATE ElementalArea_Live ea"
            . " JOIN Page_Live p ON p.SideElementalAreaID = ea.ID "
            . " SET ea.IsSideArea = 1, ea.IsTopArea = 0, ea.AllowContainer = 0, ea.AllowSectionModification = 0, ea.RenderElementDirectly = 1";
        DB::query($sql);
        DB::alteration_message("Ensure published SideElementArea records have correct settings " . DB::affected_rows(), 'changed');

        $sql = "UPDATE ElementalArea ea"
            . " JOIN Page p ON p.TopElementalAreaID = ea.ID "
            . " SET ea.IsSideArea = 0, ea.IsTopArea = 1, ea.AllowContainer = 0, ea.AllowSectionModification = 0, ea.RenderElementDirectly = 1";
        DB::query($sql);
        DB::alteration_message("Ensure draft TopElementalArea records have correct settings: " . DB::affected_rows(), 'changed');

        $sql = "UPDATE ElementalArea_Live ea"
            . " JOIN Page_Live p ON p.TopElementalAreaID = ea.ID "
            . " SET ea.IsSideArea = 0, ea.IsTopArea = 1, ea.AllowContainer = 0, ea.AllowSectionModification = 0, ea.RenderElementDirectly = 1";
        DB::query($sql);
        DB::alteration_message("Ensure published TopElementalArea records have correct settings " . DB::affected_rows(), 'changed');

    }

    /**
     * Return whether the owner has side elements
     * Rely on cache value if not null, to avoid DB hits
     */
    public function HasSideElements() : bool {
        if(is_null($this->_cache_has_side_elements)) {
            $this->_cache_has_side_elements = $this->owner->SideElementalArea()->Elements()->count() > 0;
        }
        return $this->_cache_has_side_elements;
    }

    /**
     * Return whether the owner has top elements
     * Rely on cache value if not null to avoid DB hits
     */
    public function HasTopElements() : bool {
        if(is_null($this->_cache_has_top_elements)) {
            $this->_cache_has_top_elements = $this->owner->TopElementalArea()->Elements()->count() > 0;
        }
        return $this->_cache_has_top_elements;
    }

    /**
     * Add additional elements to the CMS fields
     */
    public function updateCMSFields(FieldList $fields)
    {

        $top = $fields->dataFieldByName('TopElementalArea');
        if ($top) {
            $topTypes = $this->owner->config()->get('allowed_top_elements');
            if(is_array($topTypes) && !empty($topTypes)) {
                $top->setTypes($topTypes);
            }
            $fields->removeByName('TopContent');
            $fields->insertAfter(
                'Main',
                Tab::create(
                    'TopContent',
                    _t('nswds.TOP_CONTENT','Top content')
                )
            );
            $fields->addFieldToTab('Root.TopContent', $top);
        }

        $sidebar = $fields->dataFieldByName('SideElementalArea');
        if ($sidebar) {
            $sideTypes = $this->owner->config()->get('allowed_side_elements');
            if(is_array($sideTypes) && !empty($sideTypes)) {
                $sidebar->setTypes($sideTypes);
            }
            $fields->removeByName('SideContent');
            $fields->insertAfter(
                'Main',
                Tab::create(
                    'SideContent',
                    _t('nswds.SIDE_CONTENT','Side content')
                )
            );
            $fields->addFieldToTab('Root.SideContent', $sidebar);
        }

    }

}
