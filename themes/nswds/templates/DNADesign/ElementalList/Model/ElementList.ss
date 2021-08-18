<% if $Subtype == 'none' || not $Subtype %>
    <% if $ShowTitle && $Title %>
        <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
            {$Title}
        </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
    <% end_if %>
    {$Elements}
<% else_if $Subtype == 'cards' %>
    <% include NSWDPC/Waratah/ElementalList/Cards %>
<% else_if $Subtype == 'accordion' %>
    <% include NSWDPC/Waratah/ElementalList/Accordion %>
<% else_if $Subtype == 'tabs' %>
    <% include NSWDPC/Waratah/ElementalList/Tabs %>
<% else_if $Subtype == 'grid' %>
    <% include NSWDPC/Waratah/ElementalList/Grid %>
<% else_if $Subtype == 'listitems' %>
    <% include NSWDPC/Waratah/ElementalList/ListItems %>
<% else_if $Subtype == 'linklist' %>
    <% include NSWDPC/Waratah/ElementalList/LinkList %>
<% end_if %>
