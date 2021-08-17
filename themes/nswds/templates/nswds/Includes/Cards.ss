<% if $Items %>
<div class="nsw-grid">
    <% loop $Items %>
        <% include nswds/Card Card_ColumnOptions=$Up.ColumnOptions, Card_NoHeadline=$Up.Card_NoHeadline, Card_ImageWidth=$Up.Card_NoHeadline, Card_ImageHeight=$Up.Card_NoHeadline %>
    <% end_loop %>
</div>
<% end_if %>
