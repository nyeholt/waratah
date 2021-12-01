<% if $Cards_Items %>
<div class="nsw-grid">
    <% loop $Cards_Items %>
        <%-- some values come from the parent context --%>
        <% include nswds/Card Card_ColumnOptions=$Up.ColumnOptions, Card_NoHeadline=$Up.Card_NoHeadline, Card_ImageWidth=$Up.Card_ImageWidth, Card_ImageHeight=$Up.Card_ImageHeight, Card_Image=$Image, Card_ImageURL=$ImageURL, Card_Title=$Title, Card_Tag=$Tag, Card_Date=$Date, Card_LinkURL=$LinkURL, Card_LinkIcon=$Up.LinkIcon, Card_Content=$Abstract, Card_HeadlineOnly=$Up.ShowHeadline, Card_Brand=$Brand %>
    <% end_loop %>
</div>
<% end_if %>
