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

                <% include nswds/Callout Callout_Title='Help', Callout_Content='In this section you can request access to the listed groups, remove your access requests or remove yourself from current group memberships', Callout_Icon='group_add' %>

                <% if $GroupsForm %>
                    {$GroupsForm}
                <% end_if %>

                <% if $PendingForm %>
                    {$PendingForm}
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
