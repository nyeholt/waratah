
<% include nswds/InPageNavigation InPageNavigation=$ElementNav %>

<% if $supportsElemental && $ElementalArea && $ElementalArea.Elements.count > 0 %>
    {$ElementalArea}
<% else %>
    {$Content}
<% end_if %>
