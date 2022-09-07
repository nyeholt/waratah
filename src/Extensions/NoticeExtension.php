<?php

namespace NSWDPC\Waratah\Extensions;

use NSWDPC\Notices\Notice;
use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\View\Requirements;
use SilverStripe\View\TemplateGlobalProvider;

/**
 * Extension for generic notice module/record
 * @author James
 */
class NoticeExtension extends DataExtension implements TemplateGlobalProvider {

    /**
     * @var array
     */
    private static $db = [
        'IsAcknowledgementOfCountry' => 'Boolean'
    ];

    /**
     * @var array
     */
    private static $indexes = [
        'IsAcknowledgementOfCountry' => true
    ];

    /**
     * Post-write operations
     */
    public function onAfterWrite()
    {
        parent::onAfterWrite();
        if ($this->owner->IsAcknowledgementOfCountry == 1) {
            DB::query("UPDATE `SiteNotice` SET IsAcknowledgementOfCountry = 0 WHERE ID <> '" . Convert::raw2sql($this->owner->ID) . "'");
        }
    }

    /**
     * @return void
     */
    public function updateCmsFields($fields) {
        $fields->insertAfter(
            'Description',
            CheckboxField::create(
                'IsAcknowledgementOfCountry',
                _t('nswds.IS_AOC', 'This is the \'Acknowledgement Of Country\' notice')
            )
        );
    }

    /**
     * Return the AoC notice
     * @return Notice|null
     */
    public static function get_aoc_notice() : ?Notice
    {
        $notices = Notice::get();
        $notices = $notices->filter([
            'IsAcknowledgementOfCountry' => 1,
            'IsActive' => 1
        ]);
        $notices = $notices->sort('IsAcknowledgementOfCountry DESC');
        $notice = $notices->first();
        return $notice;
    }

    /**
     * Specify global template variables
     * @return array
     */
    public static function get_template_global_variables()
    {
        return [
            'AcknowledgementOfCountryNotice' => 'get_aoc_notice'
        ];
    }

}
