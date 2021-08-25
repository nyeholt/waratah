<% if $ShowTitle && $Title %>
    <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
        {$Title.XML}
    </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
<% end_if %>
<% if $HTML %>
    <div class="nsw-body-content">
        {$HTML}
    </div>
<% end_if %>
<% include nswds/LinkList LinkList_Items=$ElementLinks %>
