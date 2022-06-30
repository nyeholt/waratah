<!-- Layout: login -->

<% if not $CurrentMember %>
    <% if $Forms && $Forms.count > 1 %>
        <p class="nsw-intro">
            <%t nswds.MULTIPLE_SIGN_INS 'Choose an option to sign in to this website.' %>
        </p>
    <% end_if %>
<% end_if %>

<% if $Message %>
    <% include nswds/InPageNotification InPageNotification_Content=$Message.Plain, InPageNotification_Level=$MessageType, InPageNotification_Icon='info',InPageNotification_Title='Information' %>
<% end_if %>

<% if $Forms %>
    <% loop $Forms %>
    <h2>{$AuthenticatorName}</h2>

    <div class="nsw-form">
    {$Me}
    </div>
    <% end_loop %>
<% else_if $Form %>
    <% with $Form %>
    <h2>{$AuthenticatorName}</h2>
    <div class="nsw-form">
    {$ME}
    </div>
    <% end_with %>
<% end_if %>
