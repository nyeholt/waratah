<% if $ListItems_Items %>

    <div class="nsw-block">

    <% loop $ListItems_Items %>
        <% include nswds/ListItem  %>
    <% end_loop %>

    </div>

<% end_if %>
