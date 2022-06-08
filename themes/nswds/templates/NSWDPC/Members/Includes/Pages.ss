<% include NSWDPC/Members/ContainerStart %>

<% if $Member %>
    <% if $ProfilePages %>
        <% include nswds/InPageAlert InPageAlert_Level='info', InPageAlert_Icon='article', InPageAlert_Title='Information', InPageAlert_Content='You have access to the following pages on this website' %>

        <% include nswds/ListItems ListItems_Items=$ProfilePages, ListItems_IsReversed=0 %>

    <% else %>
        <% include nswds/InPageAlert InPageAlert_Level='info', InPageAlert_Icon='article', InPageAlert_Title='Information', InPageAlert_Content='Nothing is available here, at the moment' %>
    <% end_if %>
<% else %>
    <% include nswds/InPageAlert InPageAlert_Level='warning', InPageAlert_Icon='warning', InPageAlert_Title='Information', InPageAlert_Content='Access denied' %>
<% end_if %>

<% include NSWDPC/Members/ContainerEnd %>
