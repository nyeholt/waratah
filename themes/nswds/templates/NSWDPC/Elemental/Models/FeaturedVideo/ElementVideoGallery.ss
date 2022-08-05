<% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>

<div class="wrth-video-gallery">

    <div class="nsw-grid" data-video-gallery="1">

        <% loop SortedVideos %>

            <div class="nsw-col nsw-col-xs-12 nsw-col-lg-6">

                <h4>{$Title.XML}</h4>

                <% include NSWDPC/Waratah/IframeVideo Provider=$Provider, Video=$Video, Description=$Description, LinkTarget=$LinkTarget, Anchor=$Up.Anchor, WillLazyLoad=$WillLazyLoad, Transcript=$Transcript %>

            </div>

        <% end_loop %>

    </div>
    <%-- grid --%>

</div>
