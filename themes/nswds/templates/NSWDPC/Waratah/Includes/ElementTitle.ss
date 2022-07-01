<% if $ShowTitle && $Title %>
    <<% if $HeadingLevel %>{$HeadingLevel.XML}<% else %>h2<% end_if %>>{$Title.XML}</<% if $HeadingLevel %>{$HeadingLevel.XML}<% else %>h2<% end_if %>>
<% end_if %>
