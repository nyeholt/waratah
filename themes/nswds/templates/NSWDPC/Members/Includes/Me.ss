<% include NSWDPC/Members/ContainerStart %>

<% if $ExternalManagementContent %>

    {$ExternalManagementContent}

    <% include NSWDPC/Members/BasicMemberProfile %>

<% else_if $Member %>

    <% include NSWDPC/Waratah/PageForm %>

<% else %>
    <% include nswds/InPageNotification InPageNotification_Level='warning', InPageNotification_Icon='warning', InPageNotification_Content='Your profile does not exist' %>
<% end_if %>

<% include NSWDPC/Members/ContainerEnd %>
