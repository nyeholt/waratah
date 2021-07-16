<% if $Message %>
    <% if $MessageType == 'bad' || $MessageType == 'error' || $MessageType == 'required' %>
        <% include nswds/FormFieldNotification Icon='cancel', Level='error', MessageTitle='Error', Message=$Message %>
    <% else %>
        <% include nswds/FormFieldNotification Icon='valid', Level='valid', MessageTitle='Information', Message=$Message %>
    <% end_if %>
<% end_if %>
