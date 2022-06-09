<div id="{$HolderID}" class="nsw-form__group wrth-form__composite<% if $ExtraClass %> {$ExtraClass}<% end_if %>" data-is-composite="1">

    <label class="nsw-form__label left">{$Title.XML}</label>

    <% if $Description %><span class="nsw-form__helper">{$Description.XML}</span><% end_if %>

    <% if $FormatExample %><span class="nsw-form__helper nsw-small">{$FormatExample.XML}</span><% end_if %>

    <% if $FieldWarning %>
        <span class="nsw-form__helper">{$FieldWarning.XML}</span>
    <% end_if %>

    <% include nswds/FormFieldMessage FormFieldMessage_IsCompact=1, FormFieldMessage_Message=$Message, FormFieldMessage_MessageType=$MessageType, FormFieldMessage_MessageCast=$MessageCast %>

    <div class="inputs">
        {$Field}
    </div>

    <% if $RightTitle %><span class="nsw-form__helper right">{$RightTitle}</span><% end_if %>

</div>
