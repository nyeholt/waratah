
<!-- Layout: passwordsent -->

<p class="nsw-intro">
    <%t nswds.LOST_PASSWORD_ABSTRACT 'To start the password reset process, provide the email address you use to sign into this website.' %>
</p>

<% if $Message %>
    <% include nswds/InPageNotification InPageNotification_Content=$Message, InPageNotification_Level=$MessageType, InPageNotification_Icon='help',InPageNotification_Title='Information' %>
<% end_if %>

<% if $Form %>
<div class="nsw-form">
{$Form}
</div>
<% end_if %>
