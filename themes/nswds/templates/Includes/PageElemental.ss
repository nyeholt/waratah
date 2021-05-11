<% if $ElementNav %>
    <% include PageNavigation %>
<% end_if %>
<% if $supportsElemental && $ElementalArea %>
    {$ElementalArea}
<% else %>
    {$Content}
<% end_if %>
