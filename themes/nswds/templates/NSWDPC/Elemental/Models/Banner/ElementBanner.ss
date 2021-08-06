<div class="nsw-hero-banner">
    <div class="nsw-container">
        <% if $Image %>
            <div class="nsw-hero-banner__image-area">
                <img src="$Image.FocusFillMax(1920,640).URL" class="nsw-hero-banner__image" alt="{$Image.AltText.XML}">
            </div>
        <% end_if %>
        <div class="nsw-hero-banner__content-area">
            <div class="nsw-hero-banner__content">
                <% if $ShowTitle && $Title %>
                    <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %> class="nsw-hero-banner__title">
                        <% if $BannerLink %><a href="$BannerLink.LinkURL" class="nsw-hero-banner__link"><% end_if %>
                            {$Title.XML}
                        <% if $BannerLink %></a><% end_if %>
                    </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
                <% end_if %>
                <% if $HTML %>
                    $HTML
                <% end_if %>
                <i class="material-icons nsw-material-icons nsw-hero-banner__icon" focusable="false" aria-hidden="true">east</i>
            </div>
        </div>
    </div>
</div>
