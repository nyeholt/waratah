<div class="nsw-callout">
    <% if $Icon %>
        <% include nswds/Icon Icon=$Icon %>
    <% end_if %>
    <div class="nsw-callout__content">
        <h4 class="nsw-callout__title">{$Title.XML}</h4>
        <p>{$Content.XML}</p>
        <% if $Link %>
            <% if $LinkText %>
                <%-- scalar include handling e.g in template --%>
                <a href="{$LinkURL}" class="nsw-text-link">{$LinkText}</a>
            <% else %>
                <% with $Link %>
                    <a href="{$LinkURL}" class="nsw-text-link">{$Title}</a>
                <% end_with %>
            <% end_if %>
        <% end_if %>
    </div>
</div>
