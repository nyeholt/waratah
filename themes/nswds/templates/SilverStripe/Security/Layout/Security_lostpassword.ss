
<!-- Layout: lostpassword + passwordsent -->

<% if $Content && $Content != $Message %>
    <p class="nsw-intro">
        {$Content.Plain}
    </p>
<% end_if %>

<% if $Message %>
    <% include nswds/InPageNotification InPageNotification_Content=$Message, InPageNotification_Level=$MessageType, InPageNotification_Icon='help',InPageNotification_Title='Information' %>
<% end_if %>

<div class="nsw-form">
{$Form}
</div>
