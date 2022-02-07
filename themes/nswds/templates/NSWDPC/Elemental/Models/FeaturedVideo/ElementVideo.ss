<% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>
<% include nswds/Media Media_Video=1, Media_EmbedCode=$EmbedHTML %>
<% if $AltVideoURL %>
    <p><% include nswds/Button Button_LinkURL=$AltVideoURL, Button_Title="Audio described video" %></p>
<% end_if %>
<% if $Transcript %>
<div class="nsw-col nsw-col-xs-12">
    <div class="nsw-accordion js-accordion">
        <h2 class="nsw-accordion__title"><%t nswds.READ_VIDEO_TRANSCRIPT "Read the transcript of the '{title}' video" title=$Title.XML %></h2>
        <div class="nsw-accordion__content">
            <div class="nsw-wysiwyg-content">
                {$Transcript}
            </div>
        </div>
    </div>
</div>
<% end_if %>
