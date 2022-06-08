
<% if $Results %>

    <% if $Query %>
        <% include nswds/ResultsBar ResultsBar_Total=$Results.TotalItems, ResultsBar_Start=$Results.FirstItem, ResultsBar_End=$Results.LastItem, ResultsBar_ResultType='items', ResultsBar_ResultTypeSingular='item' %>
    <% end_if %>

    <% loop $Results %>
        <% include nswds/ListItem ListItem_MenuTitle=$MenuTitle, ListItem_Title=$Title, ListItem_Link=$Link, ListItem_Abstract=$Abstract, ListItem_Content=$MetaDescription %>
    <% end_loop %>

    <% include nswds/Pagination Pagination_PaginatedItems=$Results %>

<% else_if $Query %>

    <% include nswds/InPageAlert InPageAlert_Icon='search', InPageAlert_Title='No results', InPageAlert_Content='Sorry, your search did not return any results.' %>

<% else %>

    <!-- search prompt -->

<% end_if %>
