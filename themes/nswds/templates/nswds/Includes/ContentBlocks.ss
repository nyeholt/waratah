<% if $ContentBlocks_Items %>
<div class="nsw-grid">
    <% loop $ContentBlocks_Items %>
        <% include nswds/ContentBlock ContentBlock_ColumnOptions=$Up.ColumnOptions, ContentBlock_ImageWidth=$Up.ImageWidth, ContentBlock_ImageHeight=$Up.ImageHeight, ContentBlock_Image=$Image, ContentBlock_Title=$Title, ContentBlock_Content=$Abstract, ContentBlock_Listing=$Links, ContentBlock_Icon=$Icon %>
    <% end_loop %>
</div>
<% end_if %>
