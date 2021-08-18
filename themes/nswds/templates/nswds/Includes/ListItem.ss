<div class="nsw-list-item<% if $ListItem_IsReversed %> nsw-list-item--reversed<% end_if %>">

    <div class="nsw-list-item__content">

        <% if $ListItem_PrimaryLabel %>
            <div class="nsw-list-item__label">{$ListItem_PrimaryLabel.XML}</div>
        <% end_if %>

        <% if $ListItem_Date %>
            <div class="nsw-list-item__info">{$ListItem_Date.Nice}</div>
        <% else_if $ListItem_DateTime %>
            <div class="nsw-list-item__info">{$ListItem_DateTime.Nice}</div>
        <% end_if %>

        <h3 class="nsw-list-item__title">
            <a href="{$ListItem_Link}"<% if $ListItem_UseBlockLink %> class="nsw-list-item__link"<% end_if %>>
            <% if $ListItem_MenuTitle %>{$ListItem_MenuTitle.XML}<% else %>{$ListItem_Title.XML}<% end_if %>
            </a>
        </h3>

        <% if $ListItem_Info %>
        <div class="nsw-list-item__info">
            {$ListItem_Info.XML}
        </div>
        <% end_if %>

        <% if $ListItem_Abstract %>
        <p class="nsw-list-item__copy">
            {$ListItem_Abstract.XML}
        </p>
        <% else_if $ListItem_HTML %>
        <div class="nsw-list-item__copy">
            {$ListItem_HTML}
        </div>
        <% end_if %>

        <% if $ListItem_Tags %>
            <% include nswds/Tags TagsList=$ListItem_Tags %>
        <% end_if %>

    </div>

    <% if $ListItem_Image %>
    <div class="nsw-list-item__image-area">
        <img src="{$ListItem_Image.Fill(500,500).URL}" class="nsw-list-item__image" alt="{$ListItem_Image.Title.XML}">
    </div>
    <% end_if %>

</div>
