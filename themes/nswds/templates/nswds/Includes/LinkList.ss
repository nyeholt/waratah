<% if $Items %>
    <div class="nsw-link-list">
        <ul class="nsw-link-list__list">
            <% loop $Items %>
                <li class="nsw-link-list__item">
                    <a href="{$LinkURL.URL}">
                        <span>{$Title.XML}</span>
                        <% include nswds/Icon Icon='east' %>
                    </a>
                </li>
            <% end_loop %>
        </ul>
    </div>
<% end_if %>
