<% if $SortedImages %>

    <% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>

    <% if $HTML %>
    {$HTML}
    <% end_if %>

    <% if $ContentLink %>
    <a href="$ContentLink.LinkURL" class="nsw-button nsw-button--primary">{$ContentLink.Title}</a>
    <% end_if %>

    <div class="gallery">

    <% if $GalleryType == 'grid' %>

        <div class="nsw-grid" data-gallery="grid">
        <% loop $SortedImages %>

            <div class="nsw-col {$Up.ColumnClass}">

            <% include nswds/Media Media_GalleryClass="gallery-item", Media_ShowCaption=$Up.ShowCaptions, Media_Caption=$Title, Media_Image=$Me, Media_ImageWidth=$Up.Width, Media_ImageHeight=$Up.Height, Media_LinkToImage=1 %>

            </div>

        <% end_loop %>
        </div>

    <% else %>


        <div class="nsw-grid" data-gallery="slideshow">

        <% loop $SortedImages %>

            <div class="nsw-col {$Up.ColumnClass}">

            <% include nswds/Media Media_GalleryClass="gallery-item", Media_ShowCaption=$Up.ShowCaptions, Media_Caption=$Title, Media_Image=$Me, Media_ImageWidth=$Up.Width, Media_ImageHeight=$Up.Height, Media_LinkToImage=1 %>

            </div>

        <% end_loop %>

        </div>

    <% end_if %>

    </div>

<% end_if %>
