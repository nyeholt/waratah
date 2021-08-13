<div class="nsw-banner<% if $BannerStyle == "title-content" ||  $BannerStyle == "call-to-action" %> nsw-banner--wide<%end_if %><% if $AltStyle %> nsw-banner--light<% else %> nsw-banner--dark<% end_if %>">
    <div class="nsw-banner__container">
        <div class="nsw-banner__wrapper">
            <div class="nsw-banner__content nsw-wysiwyg-content">
                <% if $ShowTitle && $Title %>
                    <h1>{$Title.XML}</h1>
                <% end_if %>
                <% if $HTML %>
                    <div class="nsw-intro">{$HTML}</div>
                <% end_if %>
                <% if $BannerStyle == "call-to-action" || $BannerStyle == "call-to-action-image" %>
                    <div class="nsw-banner__button">
                        <a href="{$BannerLink.LinkURL}" class="nsw-button<% if $AltStyle %> nsw-button--primary<% else %> nsw-button--white<% end_if %>">{$BannerLink.Title.XML}</a>
                    </div>
                <% end_if %>
            </div>
            <% if $BannerStyle == "links-list" %>
                <div class="nsw-banner__links">
                    <div class="nsw-banner__list">
                        <% if $BannerLinksTitle %><div class="nsw-banner__sub-title">{$BannerLinksTitle.XML}</div><% end_if %>
                        <ul>
                            <% loop $BannerLinks %>
                                <li><a href="{$LinkURL}">{$Title.XML}</a></li>
                            <% end_loop %>
                        </ul>
                    </div>
                </div>
            <% end_if %>
            <div class="nsw-banner__box"<% if $BannerStyle == "title-content" || $BannerStyle == "call-to-action" %> role="presentation"<% end_if %>>
                <% if $BannerStyle == "title-content-image" || $BannerStyle == "call-to-action-image" %>
                    <img class="nsw-banner__image" src="{$Image.FocusFillMax(1000,1125).URL}" alt="{$Image.AltText}">
                <% else %>
                    <div class="nsw-banner__bg"></div>
                <% end_if %>
            </div>
        </div>
    </div>
</div>
