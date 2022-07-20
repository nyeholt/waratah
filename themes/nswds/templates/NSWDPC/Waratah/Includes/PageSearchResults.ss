<%-- Search page with filter form on left, results on right --%>
<div class="nsw-container nsw-p-top-sm nsw-p-bottom-lg" data-page-type="2">

    <div class="nsw-layout">

        <div class="nsw-layout__main">
            <%-- Render search title into main --%>
            <% include NSWDPC/Waratah/PageIntro %>
        </div>
        <div class="nsw-layout__sidebar nsw-layout__sidebar--desktop"></div>

    </div>

    <div class="nsw-layout">

        <aside class="nsw-layout__sidebar nsw-layout__sidebar--desktop">
            {$Form}
        </aside>

        <main id="content" class="nsw-layout__main">

            <% if $Results %>

                <% if $Query %>
                    <% include nswds/ResultsBar ResultsBar_Total=$Results.TotalItems, ResultsBar_Start=$Results.FirstItem, ResultsBar_End=$Results.LastItem, ResultsBar_ResultType='items', ResultsBar_ResultTypeSingular='item' %>
                <% end_if %>

                <% loop $Results %>
                    <% include nswds/ListItem ListItem_MenuTitle=$MenuTitle, ListItem_Title=$Title, ListItem_LinkURL=$Link, ListItem_Abstract=$Abstract, ListItem_Content=$MetaDescription %>
                <% end_loop %>

                <% include nswds/Pagination Pagination_PaginatedItems=$Results %>

            <% else_if $Query %>

                <div class="nsw-m-top-md">
                    <% include nswds/InPageAlert InPageAlert_Icon='search', InPageAlert_Title='No results', InPageAlert_Content='Sorry, your search did not return any results.' %>
                </div>

            <% else %>

            <div class="nsw-m-top-md">
                <% include nswds/InPageAlert InPageAlert_Icon='search', InPageAlert_Title='Search term required', InPageAlert_Content='Enter a search term to find matching records' %>
            </div>

            <% end_if %>


        </main>

    </div>
</div>
