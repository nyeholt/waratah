<figure class="nsw-media">

    <div class="nsw-media__video">

<% if $Provider == 'vimeo' %>

    <iframe loading="lazy" id="video-{$Anchor}" src="https://player.vimeo.com/video/{$Video.XML}?color=ffffff&title=0&byline=0&portrait=0" width="100%" height="360" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>

<% else_if $Provider == 'youtube' %>

    <iframe loading="lazy" id="video-{$Anchor}" type="text/html" width="100%" height="360" src="https://www.youtube.com/embed/{$Video.XML}?autoplay=0&modestbranding=0&fs=1&rel=0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<% end_if %>

    </div>

    <% if $Description || $LinkTarget %>
    <figcaption>
        <% if $Description %>{$Description.XML}<% end_if %>
        <% if $LinkTarget %>
            <a href="{$LinkTarget.LinkURL}" class="nsw-button">{$LinkTarget.Title}</a>
        <% end_if %>
    </figcaption>
    <% end_if %>

</figure>
