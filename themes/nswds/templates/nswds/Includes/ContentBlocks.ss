<% if $Items %>
<div class="nsw-grid">
    <% loop $Items %>
        <% include nswds/ContentBlock ContentBlock_ColumnOptions=$Up.ContentBlock_ColumnOptions, ContentBlock_ImageWidth=$Up.ContentBlock_ImageWidth, ContentBlock_ImageHeight=$Up.ContentBlock_ImageHeight %>
    <% end_loop %>
</div>
<% end_if %>
