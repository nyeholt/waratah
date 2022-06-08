<% if $Top.CurrentMember %>
<div class="nsw-in-page-alert nsw-in-page-alert--info">
    <% include nswds/Icon Icon_Icon='person', Icon_IconExtraClass='nsw-in-page-alert__icon' %>
    <div class="nsw-in-page-alert__content">
        <h5><%t nswds.LOGGED_IN 'Logged in' %></h5>

        <p><%t nswds.LOGGED_IN_AS 'You are logged in as' %> {$Top.CurrentMember.FirstName.XML}</p>

        <p><a href="$MemberProfileLink('Profile')"><%t nswds.VIEW_PROFILE 'View profile' %></a></p>

        <% include SilverStripe/Forms/Form %>

    </div>
</div>
<% end_if %>
