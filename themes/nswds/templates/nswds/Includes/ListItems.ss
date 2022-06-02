<% if $ListItems_Items %>

    <div class="nsw-block">

    <% loop $ListItems_Items %>
        <% include nswds/ListItem ListItem_PrimaryLabel=$Label, ListItem_IsReversed=$Up.ListItems_IsReversed, ListItem_Date=$Date, ListItem_DateTime=$DateTime, ListItem_LinkURL=$Link, ListItem_MenuTitle=$MenuTitle, ListItem_Title=$Title, ListItem_Info=$Info, ListItem_Abstract=$Abstract, ListItem_Tags=$Tags, ListItem_Image=$Image, ListItem_UseBlockLink=$Up.ListItems_UseBlockLink  %>
    <% end_loop %>

    </div>

<% end_if %>
