<% if $ProfileMessages %>
    <% loop $ProfileMessages %>
        <% include nswds/InPageNotification Message=$Message, Level=$MessageType %>
    <% end_loop %>
<% end_if %>
