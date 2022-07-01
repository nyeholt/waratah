<!-- Layout: logout -->

<% if $Message %>
    <% include nswds/InPageNotification InPageNotification_Content=$Message.Plain, InPageNotification_Level=$MessageType, InPageNotification_Icon='logout',InPageNotification_Title='Information' %>
<% end_if %>

<div class="nsw-form">
{$Form}
</div>
