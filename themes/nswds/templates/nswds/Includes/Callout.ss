<div class="nsw-callout">
    <% if $Icon %>
        <% include nswds/Icon Icon=$Icon, IconExtraClass='nsw-callout__icon' %>
    <% end_if %>
    <div class="nsw-callout__content">
        <h4 class="nsw-callout__title">{$Title.XML}</h4>
        <p>{$Content.XML}</p>
        <% if $LinkText && $LinkURL %>
            <a href="{$LinkURL}" class="nsw-text-link">{$LinkText}</a>
        <% else_if $Link %>
            <% with $Link %>
                <a href="{$LinkURL}" class="nsw-text-link">{$Title}</a>
            <% end_with %>
        <% end_if %>
    </div>
</div>
