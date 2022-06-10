<div id="{$HolderID}" class="nsw-form__group wrth-form__composite<% if $ExtraClass %> {$ExtraClass}<% end_if %>" data-is-composite="1">

    <label class="nsw-form__label left">{$Title.XML}</label>

    <% include NSWDPC/Waratah/Forms/Description %>

    <% if $FieldWarning %>
        <span class="nsw-form__helper nsw-form__helper--error"><% include nswds/Icon Icon_Icon='warning' %>{$FieldWarning.XML}</span>
    <% end_if %>

    <% include nswds/FormFieldMessage FormFieldMessage_IsCompact=1, FormFieldMessage_Message=$Message, FormFieldMessage_MessageType=$MessageType, FormFieldMessage_MessageCast=$MessageCast %>

    <div class="nsw-section nsw-section--half-padding nsw-section--off-white">
        <div class="nsw-container">
            <div class="inputs">
                {$Field}
            </div>
            <% if $FormatExample %><span class="nsw-form__helper">{$FormatExample.XML}</span><% end_if %>
        </div>
    </div>

    <% include NSWDPC/Waratah/Forms/RightTitle %>

</div>
