<% if $Items %>
<div class="nsw-grid">
    <% loop $Items %>
        <% include nswds/Card ColumnOptions=$ColumnOptions, IncludeHeadline=$IncludeHeadline, ImageWidth=$ImageWidth, ImageHeight=$ImageHeight %>
    <% end_loop %>
</div>
<% end_if %.
