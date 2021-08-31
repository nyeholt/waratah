

<div class="nsw-grid">

    <div class="nsw-col">

        <% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>

        <div class="nsw-grid">

            <% loop SortedVideos %>

                <div class="nsw-col nsw-col-xs-12 nsw-col-sm-6">

                    <h4>{$Title.XML}</h4>

                    <% include NSWDPC/Waratah/IframeVideo Provider=$Provider, Video=$Video, Description=$Description, LinkTarget=$LinkTarget %>

                    <% if $Transcript %>
                    <div class="nsw-accordion js-accordion">
                        <h2 class="nsw-accordion__title"><%t ausday.READ_VIDEO_TRANSCRIPT "Read the transcript of the '{title}' video" title=$Title.XML %></h2>
                        <div class="nsw-accordion__content">
                            <div class="nsw-wysiwyg-content">
                                {$Transcript}
                            </div>
                        </div>
                    </div>
                    <% end_if %>

                </div>

            <% end_loop %>

        </div>
        <%-- grid --%>

    </div>

</div>
