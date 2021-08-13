<div class="nsw-content-block">
    <div class="nsw-content-block__content">
        <% if $ShowTitle && $Title %>
        <h2 class="nsw-content-block__title">
            {$Title.XML}
        </h2>
        <% end_if %>
        <div class="nsw-content-block__copy">
        <% if $HTML %>
            {$HTML}
        <% end_if %>
        </div>
        <% if $Links %>
        <ul class="nsw-content-block__list">
            <% loop $Links %>
            <li><a href="{$LinkURL}">{$Title.XML}</a></li>
            <% end_loop %>
        </ul>
        <% end_if %>
        <% if $ContentLink %>
        <div class="nsw-content-block__link"><a href="{$ContentLink.LinkURL}"><%t nswds.VIEW_MORE 'View more' %></a></div>
        <% end_if %>
    </div>
    <div class="nsw-content-block__image-area">
    <% if $Image || $IconSVG || $IconImage %>
        <% if $Image %>
            <img src="{$Image.FocusFillMax(720,405).URL}" alt="" class="nsw-content-block__image">
        <% else_if $IconSVG || $IconImage %>
            <div class="nsw-content-block__icon">
                <img class="nsw-header__logo" src="<% if $IconSVG %>{$IconSVG.URL}<% else %>{$IconImage.FocusFillMax(64,64).URL}<% end_if %>" alt="">
            </div>
        <% end_if %>
    <% end_if %>
    </div>
</div>
