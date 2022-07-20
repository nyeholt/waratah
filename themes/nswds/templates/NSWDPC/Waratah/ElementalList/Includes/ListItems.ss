<% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>
<% if $HTML %>
    {$HTML}
<% end_if %>
<% if $Elements.Elements %>
    <div class="nsw-block">
        <% loop $Elements.Elements %>
            <% if $ContentLink %>
                <% include nswds/ListItem ListItem_Date=$PublicDate, ListItem_Title=$Title, ListItem_HTML=$HTML, ListItem_LinkURL=$ContentLink.LinkURL, ListItem_Image=$Image, ListItem_Info=$Subtitle %>
            <% else_if $LinkTarget %>
                <% include nswds/ListItem ListItem_Date=$PublicDate, ListItem_Title=$Title, ListItem_HTML=$HTML, ListItem_LinkURL=$LinkTarget.LinkURL, ListItem_Image=$Image, ListItem_Info=$Subtitle %>
            <% else %>
                <% include nswds/ListItem ListItem_Date=$PublicDate, ListItem_Title=$Title, ListItem_HTML=$HTML, ListItem_Image=$Image, ListItem_Info=$Subtitle %>
            <% end_if %>
        <% end_loop %>
    </div>
<% end_if %>
