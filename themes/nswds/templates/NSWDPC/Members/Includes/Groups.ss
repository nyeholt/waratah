<div class="nsw-container nsw-p-top-sm nsw-p-bottom-lg">
    <div class="nsw-page-layout">

        <main id="main-content" class="nsw-page-layout__main">

            <article>

                <div class="nsw-block">

                    <% include NSWDPC/Waratah/PageContentTitle %>

                    <% include NSWDPC/Waratah/PageContentAbstract %>

                    <% include NSWDPC/Members/Message %>

                </div>

                <% include NSWDPC/Waratah/PageElemental %>

                <% if $PendingForm %>
                    {$PendingForm}
                <% end_if %>

                <% if $GroupsForm %>
                    {$GroupsForm}
                <% end_if %>

            </article>
        </main>

        <div class="nsw-page-layout__sidebar">

            <% include NSWDPC/Members/Links %>

            <% if $HasSideElements %>
                {$SideElementalArea}
            <% end_if %>

        </div>

    </div>

</div>
