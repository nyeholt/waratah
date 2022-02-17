<% if $HideLabel %>
    <% include nswds/InPageNotification InPageNotification_Title='', InPageNotification_Content=$Content, InPageNotification_Cast='html', InPageNotification_Icon=$IconCode, InPageNotification_Level=$NotificationLevel %>
<% else %>
    <% include nswds/InPageNotification InPageNotification_Title=$Title, InPageNotification_Content=$Content, InPageNotification_Cast='html', InPageNotification_Icon=$IconCode, InPageNotification_Level=$NotificationLevel %>
<% end_if %>
