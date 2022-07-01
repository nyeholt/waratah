<% include NSWDPC/Members/ContainerStart %>

<% if $ExternalManagementContent %>

    {$ExternalManagementContent}

<% else %>

    <% include NSWDPC/Waratah/PageElemental %>

    <% include NSWDPC/Waratah/PageForm %>

<% end_if %>

<% include NSWDPC/Members/ContainerEnd %>
