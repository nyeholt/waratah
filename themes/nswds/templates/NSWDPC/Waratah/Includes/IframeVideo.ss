<figure class="nsw-media<% if $Media_Brand %> nsw-media--{$Media_Brand.XML}<% end_if %>">

    <div class="nsw-media__video embed video">

    <% if $EmbedURL %>
    <% if $WillLazyLoad %>{$Polyfill}<noscript class="loading-lazy"><% end_if %>
    <iframe loading="lazy" id="video-{$ID}-{$Anchor}" src="{$EmbedURL}" allow="{$AllowAttribute}" allowfullscreen></iframe>
    <% if $WillLazyLoad %></noscript><% end_if %>
    <% end_if %>

    </div>

    <figcaption>

        <% if $LinkTarget %>

            <div class="nsw-grid">

                <div class="nsw-col nsw-col-xs-12 nsw-col-lg-6">

        <% end_if %>

            <% if $HTML %>
                <%-- HTML content --%>
                {$HTML}
            <% else_if $Description %>
                {$Description.XML}
            <% end_if %>

        <% if $LinkTarget %>

                </div>
                <div class="nsw-col nsw-col-xs-12 nsw-col-lg-6">
                    <div class="ausday-featured-video__more-link">
                        <a class="nsw-button nsw-button--light-outline" href="{$LinkTarget.LinkURL}">{$LinkTarget.Title}</a>
                    </div>
                </div>

            </div>

        <% end_if %>

    </figcaption>

    <% if $Transcript %>
    <div class="nsw-accordion js-accordion">
        <div class="nsw-accordion__title"><%t nswds.READ_VIDEO_TRANSCRIPT "Read the transcript of the '{title}' video" title=$Title.XML %></div>
        <div class="nsw-accordion__content">
            {$Transcript}
        </div>
    </div>
    <% end_if %>

</figure>
