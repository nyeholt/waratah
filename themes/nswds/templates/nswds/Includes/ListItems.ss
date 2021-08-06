<% if $ListItems %>

    <div class="nsw-block">

    <% loop $ListItems %>

    <div class="nsw-list-item<% if $IsReversed %> nsw-list-item--reversed<% end_if %>">

        <div class="nsw-list-item__content">

            <% if $PrimaryLabel %>
                <div class="nsw-list-item__label">{$PrimaryLabel.XML}</div>
            <% end_if %>

            <% if $Date %>
                <div class="nsw-list-item__info">{$Date.Nice}</div>
            <% else_if $DateTime %>
                <div class="nsw-list-item__info">{$DateTime.Nice}</div>
            <% end_if %>

            <h3 class="nsw-list-item__title">
                <a href="{$Link}"<% if $UseBlockLink %> class="nsw-list-item__link"<% end_if %>>
                <% if $MenuTitle %>{$MenuTitle.XML}<% else %>{$Title.XML}<% end_if %>
                </a>
            </h3>

            <% if $Info %>
            <div class="nsw-list-item__info">
                {$Info.XML}
            </div>
            <% end_if %>

            <% if $Abstract %>
            <p class="nsw-list-item__copy">
                {$Abstract.XML}
            </p>
            <% end_if %>

            <% if $Tags %>
                <% include nswds/Tags TagsList=$Tags %>
            <% end_if %>

        </div>

        <% if $Image %>
        <div class="nsw-list-item__image-area">
            <img src="{$Image.Fill(500,500).URL}" class="nsw-list-item__image" alt="{$Image.AltText.XML}">
        </div>
        <% end_if %>

    </div>
    <% end_loop %>

    </div>

<% end_if %>
