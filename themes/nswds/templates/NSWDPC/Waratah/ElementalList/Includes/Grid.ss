<% if $ShowTitle && $Title %>
    <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
        {$Title.XML}
    </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
<% end_if %>
<% if $HTML %>
    {$HTML}
<% end_if %>
<% if $Elements.Elements %>
    <div class="nsw-grid">
        <% loop $Elements.Elements %>
            <div class="nsw-col{$Up.Up.ColumnClass($Up.OverrideColumns)}">
                {$Me}
            </div>
        <% end_loop %>
    </div>
<% end_if %>
