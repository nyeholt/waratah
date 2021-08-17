<div class="nsw-col<% if $ContentBlock_ColumnOptions %> $ContentBlock_ColumnOptions.XML<% else %> nsw-col-md-4<% end_if %>">
    <div class="nsw-content-block">
        <div class="nsw-content-block__content">
            <h2 class="nsw-content-block__title">
                {$ContentBlock_Title.XML}
            </h2>
            <p class="nsw-content-block__copy">
            <% if $ContentBlock_Description %>
                <p>{$ContentBlock_Description.XML}</p>
            <% else_if $ContentBlock_Abstract %>
                <p>{$ContentBlock_Abstract.XML}</p>
            <% else_if $ContentBlock_MetaDescription %>
                <p>{$ContentBlock_MetaDescription.XML}</p>
            <% else_if $ContentBlock_Content %>
                {$ContentBlock_Content.Summary}
            <% end_if %>
            </p>
            <% if $ContentBlock_Listing %>
            <ul class="nsw-content-block__list">
                <% loop $ContentBlock_Listing %>
                <li><a href="{$Link}">{$Title.XML}</a></li>
                <% end_loop %>
            </ul>
            <% end_if %>
            <% if $ContentBlock_Link %>
            <div class="nsw-content-block__link"><a href="$ContentBlock_Link.LinkURL"><%t nswds.VIEW_MORE 'View more' %></a></div>
            <% end_if %>
        </div>
        <div class="nsw-content-block__image-area">
        <% if $ContentBlock_Image || $ContentBlock_Icon %>
            <% if $ContentBlock_Image %>
                <% if $ContentBlock_ImageWidth || $ContentBlock_ImageHeight %>
                    <% if not $ContentBlock_ImageHeight %>
                        {$ContentBlock_Image.ScaleWidth($ContentBlock_ImageWidth)}
                    <% else %>
                        {$ContentBlock_Image.Fill($ContentBlock_ImageWidth, $ContentBlock_ImageHeight)}
                    <% end_if %>
                <% else %>
                     {$ContentBlock_Image.ScaleHeight(200)}
                <% end_if %>
            <% else_if $ContentBlock_Icon %>
                <div class="nsw-content-block__icon">
                {$ContentBlock_Icon.RAW}
                </div>
            <% end_if %>
        <% else %>
            <div class="no-image"></div>
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
