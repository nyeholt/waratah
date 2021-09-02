<% if $ElementNav %>
    <% if $CurrentPage.IsLandingPage %>
    <div class="nsw-container">
    <% end_if %>
        <% include nswds/InPageNavigation InPageNavigation_Links=$ElementNav %>
    <% if $CurrentPage.IsLandingPage %>
    </div>
    <% end_if %>
<% end_if %>

<% if $supportsElemental && $ElementalArea && $ElementalArea.Elements.count > 0 %>
    {$ElementalArea}
<% else %>
    {$Content}
<% end_if %>
