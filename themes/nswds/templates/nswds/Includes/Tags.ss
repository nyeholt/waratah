<% if $Tags_List %>
    <div class="nsw-tags">
    <% loop $Tags_List %>
        <% if $Link %>
            <a href="{$Link.LinkURL}">{$Link.Title.XML}</a>
        <% if $LinkURL %>
            <a href="{$LinkURL.XML}">{$Title.XML}</a>
        <% else_if $Field %>
            <div class="nsw-tag nsw-tag--checkbox">
                {$Field}
            </div>
        <% else %>
            <span class="nsw-tag">{$Title.XML}</span>
        <% end_if %>
    <% end_loop %>
    </div>
<% if $TagsList %>
    <%-- BC with non-scoped variables--%>
    <% include nswds/Tags Tags_List=$TagsList %>
<% end_if %>
