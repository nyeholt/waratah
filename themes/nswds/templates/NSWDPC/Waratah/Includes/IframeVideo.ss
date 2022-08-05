<%-- iframe video uses the base media component and implements some lazy loading extras --%>

<figure class="nsw-media<% if $Media_Brand %> nsw-media--{$Media_Brand.XML}<% end_if %>">

    <div class="wrth-media__video nsw-media__video">

        <% if $EmbedURL %>
        <% if $WillLazyLoad %>{$Polyfill}<noscript class="loading-lazy"><% end_if %>
        <iframe loading="lazy" width="100%" height="360" id="video-{$ID}-{$Anchor}" src="{$EmbedURL}" allow="{$AllowAttribute}" allowfullscreen></iframe>
        <% if $WillLazyLoad %></noscript><% end_if %>
        <% end_if %>

    </div>

    <figcaption>

        <% if $LinkTarget %>

            <div class="nsw-row">

                <div class="nsw-col-xs-12 nsw-col-lg-6">

        <% end_if %>

            <% if $HTML %>
                <%-- HTML content --%>
                {$HTML}
            <% else_if $Description %>
                <p>{$Description.XML}</p>
            <% end_if %>

        <% if $LinkTarget %>

                </div>
                <div class="nsw-col-xs-12 nsw-col-lg-6">
                    <div class="more-link">
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
