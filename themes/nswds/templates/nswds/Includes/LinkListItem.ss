<li class="nsw-link-list__item">
<% if $LinkListItem_LinkURL %>
    <%-- static link/title --%>
    <a href="{$LinkListItem_Link.LinkURL}">
        <span>{$LinkListItem_Title.XML}</span>
        <% include nswds/Icon Icon_Icon='east' %>
    </a>
<% else_if $LinkList_Link %>
    <%-- Link record --%>
    <a href="{$LinkListItem_Link.LinkURL}">
        <span>{$LinkListItem_Link.Title.XML}</span>
        <% include nswds/Icon Icon_Icon='east' %>
    </a>
<% end_if %>
</li>
