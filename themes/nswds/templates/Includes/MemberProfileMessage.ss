<% if $ProfileMessages %>
    <% loop $ProfileMessages %>
        <% if $MessageType == 'good' %>
            <% include nswds/InPageNotification Icon='check', Message=$Message, Level='success' %>
        <% else_if $MessageType == 'bad' || $MessageType == 'error' || $MessageType == 'required' %>
            <% include nswds/InPageNotification Icon='check', Message=$Message, Level='error' %>
        <% else_if $MessageType == 'warning' %>
            <% include nswds/InPageNotification Icon='check', Message=$Message, Level='warning' %>
        <% else %>
            <%-- default to info level --%>
            <% include nswds/InPageNotification Icon='info', Message=$Message, Level='info' %>
        <% end_if %>
    <% end_loop %>
<% end_if %>
