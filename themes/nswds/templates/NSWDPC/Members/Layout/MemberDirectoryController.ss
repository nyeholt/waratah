<div class="nsw-container nsw-p-top-sm nsw-p-bottom-lg">

    <div class="nsw-page-layout">

        <div class="nsw-page-layout__main">

        <% include NSWDPC/Waratah/PageContentTitle %>

        <% include NSWDPC/Waratah/PageContentAbstract %>

        </div>

        <div class="nsw-page-layout__sidebar"></div>

    </div>


    <div class="nsw-page-layout">

        <aside class="nsw-page-layout__sidebar">

            <% if $DirectorySearchForm %>
                {$DirectorySearchForm}
            <% end_if %>

        </aside>

        <main id="main-content" class="nsw-page-layout__main">

            <article>

                <div class="nsw-block">
                    <% include NSWDPC/Members/Message %>
                </div>

                <div class="nsw-block">
                    <% include nswds/ResultsBar ResultsBar_Start=$DirectoryMembers.FirstItem, ResultsBar_End=$DirectoryMembers.LastItem, ResultsBar_Total=$DirectoryMembers.TotalItems, ResultsBar_ResultType='members', ResultsBar_ResultTypeSingular='member' %>
                </div>

                <div class="nsw-block">
                <% include NSWDPC/Members/Directory DirectoryMembers=$DirectoryMembers %>
                </div>

                <% include nswds/Pagination Pagination_PaginatedItems=$DirectoryMembers %>


            </article>

        </main>

    </div>

</div>
