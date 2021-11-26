<% if $Video && $Provider %>

    <div class="nsw-grid">

        <div class="nsw-col nsw-col-12">


            <% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>

            <% include NSWDPC/Waratah/IframeVideo Provider=$Provider, Video=$Video, Description='', LinkTarget='', Anchor=$Anchor, WillLazyLoad=$WillLazyLoad %>

        </div>

        <% if $HTML || $Transcript %>
            <div class="nsw-col nsw-col-xs-12 nsw-col-lg-6">
                {$HTML}
            </div>
        <% end_if %>

        <% if $FeatureLink %>
        <div class="nsw-col nsw-col-xs-12 nsw-col-lg-6">
            <a class="nsw-button nsw-button--outline" href="$FeatureLink.LinkURL">{$FeatureLink.Title}</a>
        </div>
        <% end_if %>

        <% if $Transcript %>
        <div class="nsw-col nsw-col-xs-12">
            <div class="nsw-accordion js-accordion">
                <div class="nsw-accordion__title"><%t ausday.READ_VIDEO_TRANSCRIPT "Read the transcript of the '{title}' video" title=$Title.XML %></div>
                <div class="nsw-accordion__content">
                    <div class="nsw-wysiwyg-content">
                        {$Transcript}
                    </div>
                </div>
            </div>
        </div>
        <% end_if %>

    </div>

</div>

<% end_if %>
