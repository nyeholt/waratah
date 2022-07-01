<% if $HideLabel %>
    <% include nswds/InPageAlert InPageAlert_Title='', InPageAlert_Content=$Content, InPageAlert_Cast='html', InPageAlert_Icon=$IconCode, InPageAlert_Level=$NotificationLevel %>
<% else %>
    <% include nswds/InPageAlert InPageAlert_Title=$Title, InPageAlert_Content=$Content, InPageAlert_Cast='html', InPageAlert_Icon=$IconCode, InPageAlert_Level=$NotificationLevel %>
<% end_if %>
