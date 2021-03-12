<% if $Subtype == 'cards' %>
    <% include ElementalLinks_cards %>
<% else_if $Subtype == 'feature-tile' %>
    <% include ElementalLinks_featuretile %>
<% else_if $Subtype == 'link-list' %>
    <% include ElementalLinks_linklist %>
<% end_if %>
