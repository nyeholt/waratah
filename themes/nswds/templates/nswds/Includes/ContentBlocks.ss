<% if $Items %>
<div class="nsw-grid">
    <% loop $Items %>
        <% include nswds/ContentBlock ColumnOptions=$Up.ColumnOptions, IncludeHeadline=$Up.IncludeHeadline, ImageWidth=$Up.ImageWidth, ImageHeight=$Up.ImageHeight %>
    <% end_loop %>
</div>
<% end_if %>
