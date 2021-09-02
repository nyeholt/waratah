<% if $ProfileMessages %>
    <% loop $ProfileMessages %>
        <% if $MessageType == 'good' %>
            <% include nswds/InPageNotification InPageNotification_Title='Information', InPageNotification_Icon='check_circle', InPageNotification_Content=$Message, InPageNotification_Level='success' %>
        <% else_if $MessageType == 'bad' || $MessageType == 'error' || $MessageType == 'required' %>
            <% include nswds/InPageNotification InPageNotification_Title='Error', InPageNotification_Icon='error', InPageNotification_Content=$Message, InPageNotification_Level='error' %>
        <% else_if $MessageType == 'warning' %>
            <% include nswds/InPageNotification InPageNotification_Title='Warning', InPageNotification_Icon='warning', InPageNotification_Content=$Message, InPageNotification_Level='warning' %>
        <% else %>
            <%-- default to info level --%>
            <% include nswds/InPageNotification InPageNotification_Title='Information', InPageNotification_Icon='info', InPageNotification_Content=$Message, InPageNotification_Level='info' %>
        <% end_if %>
    <% end_loop %>
<% end_if %>
