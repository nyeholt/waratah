<div id="$HolderID" class="nsw-form-group">

    <% if $Title %><label class="nsw-form-label left" for="$ID">$Title</label><% end_if %>

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

    {$Field}

    <% if $RightTitle %><label class="nsw-form-label right" for="$ID">$RightTitle</label><% end_if %>

</div>
