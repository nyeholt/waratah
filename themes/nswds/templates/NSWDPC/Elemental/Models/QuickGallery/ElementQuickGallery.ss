<% if $SortedImages %>

    <% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>

    <% if $HTML %>
    {$HTML}
    <% end_if %>

    <% if $ContentLink %>
    <a href="$ContentLink.LinkURL" class="nsw-button nsw-button--dark">{$ContentLink.Title}</a>
    <% end_if %>

    <div class="nsw-grid" data-gallery="<% if $GalleryType == 'grid' %>grid<% else %>slideshow<% end_if %>">
    <% loop $SortedImages %>

        <div class="nsw-col {$Up.ColumnClass}">

        <% include nswds/Media Media_GalleryClass="gallery-item", Media_ShowCaption=$Up.ShowCaptions, Media_Caption=$Title, Media_Image=$Me, Media_ImageWidth=$Up.Width, Media_ImageHeight=$Up.Height, Media_LinkToImage=1, Media_Credit=$PhotoCredit %>

        </div>

    <% end_loop %>
    </div>

<% end_if %>
