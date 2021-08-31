<% if $Subtype == 'none' || not $Subtype || $Subtype == '' %>
    <% include NSWDPC/Waratah/ElementContent/Default %>
<% else_if $Subtype == 'callout' %>
    <% include NSWDPC/Waratah/ElementContent/Callout %>
<% else_if $Subtype == 'content-block' %>
    <% include NSWDPC/Waratah/ElementContent/ContentBlock %>
<% else_if $Subtype == 'card' %>
    <% include NSWDPC/Waratah/ElementContent/Card %>
<% else_if $Subtype == 'profile' %>
    <% include NSWDPC/Waratah/ElementContent/Profile %>
<% end_if %>
