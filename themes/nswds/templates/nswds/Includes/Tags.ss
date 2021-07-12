<% if $TagsList %>
    <% loop $TagsList %>
        <% if $Link %>
            <a href="{$Link}">{$Title.XML}</a>
        <% else_if $Field %>
            <div class="nsw-tag nsw-tag--checkbox">
                {$Field}
            </div>
        <% else %>
            <span class="nsw-tag">{$Title.XML}</span>
        <% end_if %>
    <% end_loop %>
<% end_if %>
