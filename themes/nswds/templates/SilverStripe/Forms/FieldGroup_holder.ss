<div id="$HolderID" class="nsw-form-group">

<!-- fieldgroup_holder -->

<fieldset class="nsw-form-fieldset">
    <% if $Title %>
        <legend><span class="nsw-form-legend-text">{$Title.XML}</span></label>
    <% end_if %>

    <% if $Description %><span class="nsw-form-helper">$Description</span><% end_if %>

    <% if $Message %>
        <% if $MessageType == 'good' %>
            <% include FormFieldNotification Icon='check_circle', Level='success', MessageTitle='Success', Message=$Message %>
        <% else_if $MessageType == 'warning' %>
            <% include FormFieldNotification Icon='error', Level='warning', MessageTitle='Warning', Message=$Message %>
        <% else_if $MessageType == 'error' %>
            <% include FormFieldNotification Icon='cancel', Level='error', MessageTitle='Error', Message=$Message %>
        <% else %>
            <% include FormFieldNotification Icon='info', Level='info', MessageTitle='Information', Message=$Message %>
        <% end_if %>
    <% end_if %>

    <fieldset class="nsw-form-fieldset<% if $Zebra %> $Zebra<% end_if %>">
        {$Field}
    </fieldset>

    <% if $RightTitle %><span class="nsw-form-helper right">$RightTitle</span><% end_if %>

</fieldset>

</div>
