<% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>
<% if $HTML %>
    {$HTML}
<% end_if %>
<% if $Elements.Elements %>
    <div class="nsw-link-list">
        <ul>
        <% loop $Elements.Elements %>
            <% if $ContentLink %>
                <% include nswds/LinkListItem LinkListItem_Link=$ContentLink %>
            <% else_if $LinkTarget %>
                <% include nswds/LinkListItem LinkListItem_Link=$LinkTarget %>
            <% end_if %>
        <% end_loop %>
        </ul>
    </div>
<% end_if %>
