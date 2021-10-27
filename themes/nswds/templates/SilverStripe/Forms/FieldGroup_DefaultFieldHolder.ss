<div id="$HolderID" class="field nsw-form-group<% if $ParentExtraClass %> {$ParentExtraClass}<%end_if %>">

<!-- fieldgroup_defaultholder -->

<fieldset class="nsw-form-fieldset">
    <% if $Title %>
        <legend><span class="nsw-form-legend-text">{$Title.XML}</span></label>
    <% end_if %>

    <% if $Description %><span class="nsw-form-helper">$Description</span><% end_if %>

    <% include nswds/FormFieldMessage FormFieldMessage_Message=$Message, FormFieldMessage_MessageType=$MessageType %>

    <fieldset class="nsw-form-fieldset<% if $Zebra %> $Zebra<% end_if %>">
        {$Field}
    </fieldset>

    <% if $RightTitle %><span class="nsw-form-helper right">$RightTitle</span><% end_if %>

</fieldset>

</div>
