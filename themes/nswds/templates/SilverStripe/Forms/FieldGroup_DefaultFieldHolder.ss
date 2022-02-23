<div id="$HolderID" class="nsw-form__group wrth-form__fieldgroup<% if $ParentExtraClass %> {$ParentExtraClass}<%end_if %>">

<!-- fieldgroup_defaultholder -->

<fieldset class="nsw-form__fieldset">
    <% if $Title %>
        <legend><span class="nsw-form__legend">{$Title.XML}</span></label>
    <% end_if %>

    <% if $Description %><span class="nsw-form__helper">$Description</span><% end_if %>

    <% include nswds/FormFieldMessage FormFieldMessage_Message=$Message, FormFieldMessage_MessageType=$MessageType %>

    <div class="field">
    {$Field}
    </div>

    <% if $RightTitle %><span class="nsw-form__helper right">$RightTitle</span><% end_if %>

</fieldset>

</div>
