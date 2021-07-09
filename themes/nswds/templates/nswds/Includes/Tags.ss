<%-- render an ArrayList into tags --%>
<% if $TagsList %>
    <% loop $TagsList %>
        <% if $Link %>
            <a href="{$Link}">{$Title.XML}</a>
        <% else_if $IsForm %>
            <%-- TODO: should be a FormField --%>
            <div class="nsw-tag nsw-tag--checkbox">
                <input type="checkbox" id="{$Name}" name="{$Name}">
                <label for="{$Name}">{$Title.XML}</label>
            </div>
        <% else %>
            <span class="nsw-tag">{$Title.XML}</span>
        <% end_if %>
    <% end_loop %>
<% end_if %>
