<% if $Buttons_Items %>
    <div class="nsw-list nsw-list--32">
    <% loop $Buttons_Items %>
        <% include nswds/Button %>
    <% end_loop %>
    </div>
<% end_if %>
