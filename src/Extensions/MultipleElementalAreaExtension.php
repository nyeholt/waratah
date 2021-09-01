<?php

namespace NSWDPC\Waratah\Extensions;

use DNADesign\Elemental\Models\ElementalArea;
use NSWDPC\Elemental\Models\Banner\ElementBanner;
use NSWDPC\Elemental\Models\ExtensibleSearch\ElementalExtensibleSearch;
use Silverstripe\ORM\DataExtension;
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
