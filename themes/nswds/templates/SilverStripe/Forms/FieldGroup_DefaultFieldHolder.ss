<div id="$HolderID" class="nsw-form__group wrth-form__fieldgroup<% if $ParentExtraClass %> {$ParentExtraClass}<%end_if %>">

<!-- fieldgroup_defaultholder -->

<fieldset class="nsw-form__fieldset">

    <% include NSWDPC/Waratah/Forms/Legend %>

    <% if $Description %><span class="nsw-form__helper">$Description</span><% end_if %>

    <% include nswds/FormFieldMessage FormFieldMessage_IsCompact=1, FormFieldMessage_Message=$Message, FormFieldMessage_MessageType=$MessageType %>

    <div class="field">
    {$Field}
    </div>

    <% if $RightTitle %><span class="nsw-form__helper right">$RightTitle</span><% end_if %>

</fieldset>

</div>
