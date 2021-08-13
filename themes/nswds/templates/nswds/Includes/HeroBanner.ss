<div class="nsw-banner<% if $BannerIsDark %> nsw-banner--dark<% end_if %><% if $BannerIsWide %> nsw-banner--wide<% end_if %>">

    <div class="nsw-banner__container">

        <div class="nsw-banner__wrapper">

            <div class="nsw-banner__content nsw-wysiwyg-content">

                <h1>{$BannerTitle}</h1>

                <% if $BannerHTML %>
                    <%-- simple HTML --%>
                    <div class="nsw-intro">
                    {$HTML}
                    </div>
                <% else %>
                    <p class="nsw-intro">{$BannerContent.XML}</p>
                <% end_if %>

                <% if $BannerLink %>
                <div class="nsw-banner__button">
                    <% if $BannerIsDark %>
                        <% include nswds/Button ButtonClass='nsw-button--white', Link=$BannerLink.LinkURL, Title=$BannerLink.Title %>
                    <% else %>
                        <% include nswds/Button Link=$BannerLink.LinkURL, Title=$BannerLink.Title %>
                    <% end_if %>
                </div>
                <% end_if %>

            </div>

            <% if $BannerLinks %>
            <div class="nsw-banner__links">
                <div class="nsw-banner__list">
                    <div class="nsw-banner__sub-title">{$BannerLinksTitle}</div>
                    <ul>
                    <% loop $Links %>
                        <li><a href="{$Link}">{$Title}</a></li>
                    <% end_loop %>
                    </ul>
                </div>
            </div>
            <% end_if %>

            <% if not $IsWide %>
            <div class="nsw-banner__box" role="presentation">
                <% if $BannerImage %>
                    <img class="nsw-banner__image" src="{$BannerImage.Fill(500,500).URL}" alt="{$BannerImage.AltText.XML}">
                <% else %>
                    <div class="nsw-banner__bg"></div>
                <% end_if %>
            </div>
            <% end_if %>

        </div>
        <%-- nsw-banner__wrapper --%>

    </div>
    <%-- nsw-banner__container --%>

</div>
<%-- nsw-banner --%>
