<% if $ShowTitle && $Title %>
    <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
        {$Title.XML}
    </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
<% end_if %>
<% if $HTML %>
    {$HTML}
<% end_if %>
<% if $Elements.Elements %>
    <div class="nsw-link-list">
        <% loop $Elements.Elements %>
            <%-- TODO: check for element type ? this assumes ElementDecoratedContent --%>
            <% include nswds/LinkListItem LinkListItem_Link=$LinkTargete %>
        <% end_loop %>
    </div>
<% end_if %>
