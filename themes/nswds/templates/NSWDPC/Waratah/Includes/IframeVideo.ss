<figure class="nsw-media">

    <div class="nsw-media__video embed video">

    <% if $EmbedURL %>

    <% if $WillLazyLoad %>{$Polyfill}<noscript class="loading-lazy"><% end_if %>
    <iframe loading="lazy" id="video-{$ID}-{$Anchor}" src="{$EmbedURL}" allow="{$AllowAttribute}" allowfullscreen></iframe>
    <% if $WillLazyLoad %></noscript><% end_if %>

    <% end_if %>

    </div>

    <% if $Description || $LinkTarget %>
    <figcaption>
        <% if $Description %><p>{$Description.XML}</p><% end_if %>
        <% if $LinkTarget %>
            <p><a href="{$LinkTarget.LinkURL}">{$LinkTarget.Title}</a></p>
        <% end_if %>
    </figcaption>
    <% end_if %>

    <% if $Transcript %>
    <div class="nsw-accordion js-accordion">
        <div class="nsw-accordion__title"><%t nswds.READ_VIDEO_TRANSCRIPT "Read the transcript of the '{title}' video" title=$Title.XML %></div>
        <div class="nsw-accordion__content">
            <div class="nsw-wysiwyg-content">
                {$Transcript}
            </div>
        </div>
    </div>
    <% end_if %>

</figure>
