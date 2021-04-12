<% if $ElementNav %>
    <% include PageNagivation %>
<% end_if %>
<% if $supportsElemental && $ElementalArea %>
    {$ElementalArea}
<% else %>
    {$Content}
<% end_if %>
