<% if $Subtype == 'none' || not $Subtype %>
    <% include ElementContent_default %>
<% else_if $Subtype == 'callout' %>
    <% include ElementContent_callout %>
<% else_if $Subtype == 'profile' %>
    <% include ElementContent_profile %>
<% end_if %>
