<% if $LinkListItem_Link || $LinkListItem_LinkURL %>
<li>
<% if $LinkListItem_Link %>
    <%-- link record --%>
    <a href="{$LinkListItem_Link.Link}">
<% else_if $LinkListItem_LinkURL %>
    <%-- link string --%>
    <a href="{$LinkListItem_LinkURL.XML}">
<% end_if %>
        <span>{$LinkListItem_Link.Title.XML}</span>
        <% include nswds/Icon Icon_Icon='east' %>
    </a>
</li>
<% end_if %>
