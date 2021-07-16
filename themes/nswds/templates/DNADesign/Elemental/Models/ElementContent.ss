<% if $Subtype == 'none' || not $Subtype %>
    <% include NSWDPC/Waratah/ElementContent/Default %>
<% else_if $Subtype == 'callout' %>
    <% include NSWDPC/Waratah/ElementContent/Callout %>
<% else_if $Subtype == 'profile' %>
    <% include NSWDPC/Waratah/ElementContent/Profile %>
<% end_if %>
