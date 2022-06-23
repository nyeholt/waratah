<% if $Top.CurrentMember %>
<div class="nsw-section nsw-section--box nsw-m-top-sm">
    <% with $Top.CurrentMember %>
    <h4><%t nswds.HI_FIRSTNAME 'Hi {firstName}!' firstName=$FirstName %></h4>

    <% if $CreationInterval %>
        <% with $CreationInterval %>
            <% if $Days == 1 %>
                <p><%t nswds.MEMBER_SINCE_YESTERDAY 'You joined a day ago' %></p>
            <% else_if $Days > 1 %>
                <p><%t nswds.MEMBER_SINCE 'You have been a member for {count} days' count=$Days %></p>
            <% end_if %>
        <% end_with %>
    <% end_if %>

    <% if $ProfileImage %>
        <figure class="nsw-media nsw-media--transparent">
            <div class="img-fluid">
            <% with $ProfileImage %>
            {$ScaleWidth(300)}
            <% end_with %>
            </div>
        </figure>
    <% end_if %>

    <% end_with %>

    <div class="nsw-link-list">
      <ul>
        <li>
            <a href="{$MemberProfileLink('Profile')}">
            <span><%t nswds.VIEW_PROFILE 'View profile' %></span>
            <% include nswds/Icon Icon_Icon='east' %>
            </a>
        </li>
      </ul>
    </div>

    <% include SilverStripe/Forms/Form HideFormWrapper=1 %>

</div>
<% end_if %>
