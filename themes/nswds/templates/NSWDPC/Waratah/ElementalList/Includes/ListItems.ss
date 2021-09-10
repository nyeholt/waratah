<% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>
<% if $HTML %>
    {$HTML}
<% end_if %>
<% if $Elements.Elements %>
    <div class="nsw-block">
        <% loop $Elements.Elements %>
            <%-- TODO: check for element type ? this assumes ElementDecoratedContent --%>
            <% include nswds/ListItem ListItem_Date=$PublicDate, ListItem_Title=$Title, ListItem_HTML=$HTML, ListItem_Link=$LinkTarget.LinkURL, ListItem_Image=$Image, ListItem_Info=$SubTitle %>

        <% end_loop %>
    </div>
<% end_if %>
