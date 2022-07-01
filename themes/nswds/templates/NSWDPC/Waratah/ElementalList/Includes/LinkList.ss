<% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>
<% if $HTML %>
    {$HTML}
<% end_if %>
<% if $Elements.Elements %>
    <div class="nsw-link-list">
        <% loop $Elements.Elements %>
            <%-- TODO: check for element type ? this assumes ElementDecoratedContent --%>
            <% include nswds/LinkListItem LinkListItem_Link=$LinkTarget %>
        <% end_loop %>
    </div>
<% end_if %>
