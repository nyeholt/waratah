<% if $Subtype == 'none' || not $Subtype %>
    <% include NSWDPC/Waratah/ElementDecoratedContent/Default %>
<% else_if $Subtype == 'callout' %>
    <% include NSWDPC/Waratah/ElementDecoratedContent/Callout %>
<% else_if $Subtype == 'profile' %>
    <% include NSWDPC/Waratah/ElementDecoratedContent/Profile %>
<% else_if $Subtype == 'card' %>
    <% include NSWDPC/Waratah/ElementDecoratedContent/Card %>
<% else_if $Subtype == 'contentblock' %>
    <% include NSWDPC/Waratah/ElementDecoratedContent/ContentBlock %>
<% end_if %>
