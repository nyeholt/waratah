<% include NSWDPC/Members/ContainerStart %>

<% if $ExternalManagementContent %>

    {$ExternalManagementContent}

    <% include NSWDPC/Members/BasicMemberProfile %>

<% else_if $Member %>

    <% with $Member %>

    <h3><%t nswds.MEMBERS_PERSON_WELCOME 'Hi {firstName}!' firstName=$FirstName %></h3>
    <div>
        <% if $Image %>
            <% with $Image %>
            <div>
                $ResizedImage(300,300)
            </div>
            <% end_with %>
        <% end_if %>
        <% if Created %><p><%t nswds.MEMBERS_SINCE 'Member Since: {since}' since=$Created.Nice %></p><% end_if %>
    </div>
    <% end_with %>

    <% include NSWDPC/Waratah/PageForm %>

<% else %>
    <% include nswds/InPageNotification InPageNotification_Level='warning', InPageNotification_Icon='warning', InPageNotification_Content='Your profile does not exist' %>
<% end_if %>

<% include NSWDPC/Members/ContainerEnd %>
