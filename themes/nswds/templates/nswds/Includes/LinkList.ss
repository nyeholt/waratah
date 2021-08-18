<% if $Items %>
    <div class="nsw-link-list">
        <ul class="nsw-link-list__list">
            <% loop $Items %>
                <% include nswds/LinkListItem %>
            <% end_loop %>
        </ul>
    </div>
<% end_if %>
