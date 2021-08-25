<% if $ListItems_Items %>

    <div class="nsw-block">

    <% loop $ListItems_Items %>
        <% include nswds/ListItem ListItem_PrimaryLabel=$Label, ListItem_IsReversed=$IsReversed, ListItem_Date=$Date, ListItem_DateTime=$DateTime, ListItem_LinkURL=$Link, ListItem_MenuTitle=$MenuTitle, ListItem_Title=$Title, ListItem_Info=$Info, ListItem_Abstract=$Abstract, ListItem_Tags=$Tags, ListItem_Image=$Image  %>
    <% end_loop %>

    </div>

<% end_if %>
