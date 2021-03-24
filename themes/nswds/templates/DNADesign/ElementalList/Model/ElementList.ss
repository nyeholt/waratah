<% if $Subtype == 'none' || not $Subtype %>
    <% if $ShowTitle && $Title %>
        <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
            {$Title}
        </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
    <% end_if %>
    {$Elements}
<% else_if $Subtype == 'cards' %>
    <% include ElementalList_cards %>
<% else_if $Subtype == 'accordion' %>
    <% include ElementalList_accordion %>
<% else_if $Subtype == 'tabs' %>
    <% include ElementalList_tabs %>
<% end_if %>
