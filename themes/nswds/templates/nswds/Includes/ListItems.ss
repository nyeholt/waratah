<% if $ListItems %>

    <div class="nsw-block">

    <% loop $ListItems %>
        <% include nswds/ListItem %>
    <% end_loop %>

    </div>

<% end_if %>
