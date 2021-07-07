<% if $Message %>
    <% if $MessageType == 'bad' || $MessageType == 'error' || $MessageType == 'required' %>
        <% include FormFieldNotification Icon='cancel', Level='error', MessageTitle='Error', Message=$Message %>
    <% else %>
        <% include FormFieldNotification Icon='valid', Level='valid', MessageTitle='Information', Message=$Message %>
    <% end_if %>
<% end_if %>
