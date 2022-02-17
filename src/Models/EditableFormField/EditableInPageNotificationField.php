<?php

namespace NSWDPC\Waratah\Models\EditableFormField;

use gorriecoe\Link\Models\Link;
use NSWDPC\InlineLinker\InlineLinkField;
use SilverStripe\Admin\LeftAndMain;
use SilverStripe\Control\Controller;
use SilverStripe\Forms\LiteralField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\DropdownField;
use SilverStripe\UserForms\Model\EditableFormField\EditableLiteralField;

/**
 * Provide a InPageNotification field for use in user defined forms
 * This field is rendered via nswds/InPageNotification template
 * @author James
 */
class EditableInPageNotificationField extends EditableLiteralField {

    /**
     * @var string
     */
    private static $singular_name = 'In-page notification (NSW Design System)';

    /**
     * @var string
     */
    private static $plural_name = 'In-page notifications (NSW Design System)';

    /**
     * @var string
     */
    private static $table_name = 'EditableInPageNotificationField';

    /**
     * Mark as literal only
     *
     * @config
     * @var bool
     */
    private static $literal = true;

    /**
     * @var array
     */
    private static $db = [
        'NotificationLevel' => 'Varchar(16)'
    ];

    /**
     * @var array
     */
    private static $defaults = [
        'HideLabel' => 0,
        'HideFromReports' => 1,
        'NotificationLevel' => 'info'
    ];

    /**
     * @inheritdoc
     */
    public function showInReports()
    {
        return false;
    }

    /**
     * Return icon based on state
     */
    public function getIconCode():string {
        switch($this->NotificationLevel) {
            case 'warning':
                return 'error';
                break;
            case 'error':
                // critical
                return 'cancel';
                break;
            case 'success':
                return 'check_circle';
                break;
            case 'info':
            default:
                return 'info';
                break;
        }
    }

    /**
     * Return available levels
     */
    public function getNotificationLevels() : array {
        return [
            'info' => 'Information',
            'warning' => 'Warning',
            'error' => 'Critical',
            'success' => 'Success',
        ];
    }

    /**
     * @inheritdoc
     */
    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->insertAfter(
            'Content',
            DropdownField::create(
                'NotificationLevel',
                _t('nswds.NOTIFICATION_LEVEL', 'Notification level'),
                $this->getNotificationLevels()
            )->setDescription(
                _t(
                    'nswds.NOTIFICATION_LEVEL_DESCRIPTION',
                    'The icon used is determined by the level selected'
                )
            )
        );

        $fields->removeByName(['HideFromReports']);

        if($hideLabelField = $fields->dataFieldByName('HideLabel')) {
            $hideLabelField->setTitle(
                _t(
                    'nswds.HIDE_TITLE_IN_NOTIFICATION',
                    'Do not show the title in the notification'
                )
            );
            $fields->insertAfter(
                'Title',
                $hideLabelField
            );
        }

        return $fields;
    }

    /**
     * Hide the label
     * @inheritdoc
     */
    public function onBeforeWrite() {
        parent::onBeforeWrite();
        $this->HideFromReports = 1;
    }

    /**
     * @inheritdoc
     * Render this element into the nswds Callout include,
     * returned as a LiteralField
     */
    public function getFormField()
    {

        if(Controller::curr() instanceof LeftAndMain) {
            // avoid theme issues with templates not being found
            $content = "";
        } else {
            $content = $this->renderWith(__CLASS__);
        }

        $field = LiteralField::create(
            "InPageNotification-{$this->ID}]",
            $content
        );

        $this->doUpdateFormField($field);

        return $field;
    }

}
