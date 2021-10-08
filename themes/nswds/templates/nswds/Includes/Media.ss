<figure class="nsw-media<% if $Media_WidthOption %>nsw-media--<% if $Media_AlignOption %>{$Media_AlignOption}-<% end_if %>{$Media_WidthOption.XML}<% end_if %>"<% if $Media_Image %> data-original="{$Media_Image.AbsoluteURL.XML}"<% end_if %>>

<% if $Media_Image || $Media_Caption %>

    <% if $Media_Image %>

        <% if Media_LinkToImage == 1 %><a href="{$Media_Image.AbsoluteURL.XML}"><% end_if %>

        <% if $Media_ImageWidth > 0 && $Media_ImageHeight > 0 %>
            <img src="{$Media_Image.FocusFill($Media_ImageWidth, $Media_ImageHeight).URL}" alt="$Media_Image.AltText">
        <% else_if $Media_ImageWidth > 0 %>
            <img src="{$Media_Image.ScaleWidth($Media_ImageWidth).URL}" alt="$Media_Image.AltText">
        <% else_if $Media_ImageHeight > 0 %>
            <img src="{$Media_Image.ScaleHeight($Media_ImageHeight).URL}" alt="$Media_Image.AltText">
        <% else %>
            <img src="{$Media_Image.URL}" alt="{$Media_Image.Title.XML}" alt="$Media_Image.AltText">
        <% end_if %>

        <% if Media_LinkToImage %></a><% end_if %>

    <% else %>

        <div class="no-image"></div>

    <% end_if %>

    <% if $Media_ShowCaption %>
        <figcaption>
        {$Media_Caption.XML}
        </figcaption>
    <% end_if %>

<% else_if $Media_Video || $Media_Caption %>

    <div class="nsw-media__video">
        {$Media_EmbedCode.RAW}
    </div>

    <% if $Media_ShowCaption %>
        <figcaption>
        {$Media_Caption.XML}
        </figcaption>
    <% end_if %>

    <% if $Media_AltVideoURL %>
        <p class="alt-url">
            <a href="$Media_AltVideoURL">
                <% _t('nswds.WATCHWITHAUDIODESC','Watch this video with an audio description') %>
            </a>
        </p>
    <% end_if %>

    <% if $Media_Transcript %>
        <div class="nsw-accordion js-accordion">
            <h2 class="nsw-accordion__title"><%t nswds.READ_TRANSCRIPT 'Read transcript' %></h2>
            <div class="nsw-accordion__content">
                <div class="nsw-wysiwyg-content">
                    {$Media_Transcript}
                </div>
            </div>
        </div>
    <% end_if %>

<% end_if %>

</figure>
