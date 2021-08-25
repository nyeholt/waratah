<% if $ElementNav %>
<% include nswds/InPageNavigation InPageNavigation_Links=$ElementNav %>
<% end_if %>

<% if $supportsElemental && $ElementalArea && $ElementalArea.Elements.count > 0 %>
    {$ElementalArea}
<% else %>
    {$Content}
<% end_if %>
