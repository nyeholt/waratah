
<% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>

<div class="wrth-video-gallery">

    <div class="nsw-grid">

        <% loop SortedVideos %>
        {$Me}
        <% end_loop %>

    </div>
    <%-- grid --%>

</div>
