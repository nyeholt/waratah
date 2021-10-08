<% if $ContentBlocks_Items %>
<div class="nsw-grid">
    <% loop $ContentBlocks_Items %>
        <% include nswds/ContentBlock ContentBlock_ColumnOptions=$Up.ColumnClass($Up.OverrideColumns), ContentBlock_Title=$Title, ContentBlock_Content=$HTML, ContentBlock_Link=$ContentLink, ContentBlock_Listing=$Links, ContentBlock_Image=$ContentImage, ContentBlock_IconSVG=$IconSVG, ContentBlock_IconImage=$IconImage %>
    <% end_loop %>
</div>
<% end_if %>
