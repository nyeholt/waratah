<div class="nsw-container nsw-p-top-sm nsw-p-bottom-lg">
    <div class="nsw-page-layout">

        <main id="main-content" class="nsw-page-layout__main">

            <article>

                <div class="nsw-block">

                    <% include NSWDPC/Waratah/PageContentTitle %>

                    <% include NSWDPC/Waratah/PageContentAbstract %>

                    <% include NSWDPC/Members/Message %>

                </div>

                <% if $Member %>
                    <% if $ProfilePages %>
                        <% include nswds/InPageNotification InPageNotification_Level='info', InPageNotification_Icon='article', InPageNotification_Title='Information', InPageNotification_Content='You have access to the following pages on this website' %>

                        <% include nswds/ListItems ListItems_Items=$ProfilePages, ListItems_IsReversed=0 %>

                    <% else %>
                        <% include nswds/InPageNotification InPageNotification_Level='info', InPageNotification_Icon='article', InPageNotification_Title='Information', InPageNotification_Content='Nothing is available here, at the moment' %>
                    <% end_if %>
                <% else %>
                    <% include nswds/InPageNotification InPageNotification_Level='warning', InPageNotification_Icon='warning', InPageNotification_Title='Information', InPageNotification_Content='Access denied' %>
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
