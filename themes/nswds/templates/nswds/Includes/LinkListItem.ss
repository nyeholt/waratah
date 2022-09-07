<% if $LinkListItem_Link || $LinkListItem_LinkURL %>
<li>
<% if $LinkListItem_Link %>
    <%-- link record --%>
    <a href="{$LinkListItem_Link.LinkURL.XML}">
        <span>{$LinkListItem_Link.Title.XML}</span>
        <% include nswds/Icon Icon_Icon='east' %>
    </a>
<% else_if $LinkListItem_LinkURL %>
    <%-- link string --%>
    <a href="{$LinkListItem_LinkURL.XML}">
        <span>{$LinkListItem_LinkTitle.XML}</span>
        <% include nswds/Icon Icon_Icon='east' %>
    </a>
<% end_if %>
</li>
<% end_if %>
