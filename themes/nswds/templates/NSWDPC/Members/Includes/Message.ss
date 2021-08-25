<% if $ProfileMessages %>
    <% loop $ProfileMessages %>
        <% if $MessageType == 'good' %>
            <% include nswds/InPageNotification InPageNotification_Icon='check', InPageNotification_Message=$Message, InPageNotification_Level='success' %>
        <% else_if $MessageType == 'bad' || $MessageType == 'error' || $MessageType == 'required' %>
            <% include nswds/InPageNotification InPageNotification_Icon='check', InPageNotification_Message=$Message, InPageNotification_Level='error' %>
        <% else_if $MessageType == 'warning' %>
            <% include nswds/InPageNotification InPageNotification_Icon='check', InPageNotification_Message=$Message, InPageNotification_Level='warning' %>
        <% else %>
            <%-- default to info level --%>
            <% include nswds/InPageNotification InPageNotification_Icon='info', InPageNotification_Message=$Message, InPageNotification_Level='info' %>
        <% end_if %>
    <% end_loop %>
<% end_if %>
