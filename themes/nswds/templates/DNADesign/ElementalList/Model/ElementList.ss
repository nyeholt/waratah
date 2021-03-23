<% if $Subtype == 'none' || not $Subtype %>

<% if $ShowTitle && $Title %>
    <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
        {$Title}
    </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
<% end_if %>

<% if $ListLink %>
    <p>
        <a href="{$ListLink.LinkURL}" class="nsw-button nsw-button--primary">{$ListLink.Title}</a>
    </p>
<% end_if %>

{$Elements}

<% else_if $Subtype == 'cards' %>
    <% include ElementalLinks_cards %>
<% else_if $Subtype == 'feature-tile' %>
    <% include ElementalLinks_featuretile %>
<% else_if $Subtype == 'link-list' %>
    <% include ElementalLinks_linklist %>
<% end_if %>
