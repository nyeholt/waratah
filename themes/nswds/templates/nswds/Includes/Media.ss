<% if $Image || $Video %>
<figure class="nsw-media<% if $WidthOption %>nsw-media--<% if $AlignOption %>{$AlignOption}-<% end_if %>{$WidthOption.XML}<% end_if %>">
<% if $Image %>
    <% if $Height == "small" %>
        <img src="$Image.FocusFillMax(1200,320).URL" alt="$Image.AltText">
    <% else_if $Height == "medium" %>
        <img src="$Image.FocusFillMax(1200,640).URL" alt="$Image.AltText">
    <% else_if $Height == "large" %>
        <img src="$Image.FocusFillMax(1200,960).URL" alt="$Image.AltText">
    <% else %>
        <img src="$Image.ScaleMaxWidth(1200).URL" alt="$Image.AltText">
    <% end_if %>
    <% if $Caption %>
        <figcaption>
        {$Caption.XML}
        </figcaption>
    <% end_if %>
<% else_if $Video %>
    <div class="nsw-media__video">
        {$EmbedHTML}
    </div>
    <% if $Caption %>
        <figcaption>
        {$Caption.XML}
        </figcaption>
        <% if $AltVideoURL %>
            <p class="alt-url">
                <a href="$AltVideoURL">
                    <% _t('WATCHWITHAUDIODESC','Watch this video with an audio description') %>
                </a>
            </p>
        <% end_if %>
        <% if $Transcript %>
            <div class="nsw-accordion js-accordion">
                <h2 class="nsw-accordion__title">Read transcript</h2>
                <div class="nsw-accordion__content">
                    <div class="nsw-wysiwyg-content">
                        {$Transcript}
                    </div>
                </div>
            </div>
        <% end_if %>
    <% end_if %>
<% end_if %>
</figure>
<% end_if %>
