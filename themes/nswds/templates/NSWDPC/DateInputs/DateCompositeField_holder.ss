<div id="{$HolderID}" class="nsw-form__group wrth-form__composite<% if $ExtraClass %> {$ExtraClass}<% end_if %>" data-is-composite="1">
    <fieldset class="nsw-form__fieldset">

        <legend><span class="nsw-form__legend">{$Title.XML}</span></legend>

        <% if $Description %><span class="nsw-form__helper">{$Description.XML}</span><% end_if %>

        <% if $FormatExample %><span class="nsw-form__helper">{$FormatExample.XML}</span><% end_if %>

        <% if $FieldWarning %>
            <% include nswds/FormFieldNotification FormFieldNotification_Level='error', FormFieldNotification_Message=$FieldWarning %>
        <% end_if %>

        <% include nswds/FormFieldMessage FormFieldMessage_Message=$Message, FormFieldMessage_MessageType=$MessageType, FormFieldMessage_MessageCast=$MessageCast %>

        <div class="inputs">
        {$Field}
        </div>

        <% if $RightTitle %><span class="nsw-form__helper right" for="$ID">{$RightTitle}</span><% end_if %>

    </fieldset>
</div>
