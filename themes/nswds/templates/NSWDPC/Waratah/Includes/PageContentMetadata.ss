<% if $Date %>
    <p>
        <time datetime="{$Date}">{$Date.Full}</time>
        <% if $MediaAttributes %>
        <br>
        <strong>
            <% loop $MediaAttributes %>
                <% if $Join.Content %>
                    <strong>{$Join.Content}</strong><% if not $Last %><br><% end_if %>
                <% end_if %>
            <% end_loop %>
        </strong>
        <% end_if %>
    </p>
<% end_if %>
<% if $MediaAttributes || $Tags %>
    <hr>
<% end_if %>
<% if $Tags %>
    <div class="tags nsw-m-bottom-md">
        <% loop $Tags %>
            <a href="{$Up.getParent.Link}?tag={$Title.URLATT}" class="nsw-tag">{$Title}</a>
        <% end_loop %>
    </div>
<% end_if %>
