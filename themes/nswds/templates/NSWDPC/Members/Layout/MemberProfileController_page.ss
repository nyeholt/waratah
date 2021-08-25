<div class="nsw-container nsw-p-top-sm nsw-p-bottom-lg">
    <div class="nsw-page-layout">

        <div class="nsw-page-layout__sidebar">

            <% include NSWDPC/Members/Links %>

        </div>

        <main id="main-content" class="nsw-page-layout__main">

            <article>

                <div class="nsw-block">

                    <% include NSWDPC/Waratah/PageContentTitle %>

                    <% include NSWDPC/Waratah/PageContentAbstract %>

                    <% include NSWDPC/Members/Message %>

                </div>

                <% if $Member %>
                    <% if $ProfilePages %>
                        <% include nswds/InPageNotification InPageNotification_Level='info', InPageNotification_Icon='article', InPageNotification_MessageTitle='Information', InPageNotification_Message='You have access to the following pages on this website' %>
                        <% include nswds/ContentBlocks ContentBlocks_Items=$ProfilePages %>
                    <% else %>
                        <% include nswds/InPageNotification InPageNotification_Level='info', InPageNotification_Icon='article', InPageNotification_MessageTitle='Information', InPageNotification_Message='Nothing is available here, at the moment' %>
                    <% end_if %>
                <% else %>
                    <% include nswds/InPageNotification InPageNotification_Level='warning', InPageNotification_Icon='warning', InPageNotification_MessageTitle='Information', InPageNotification_Message='Access denied' %>
                <% end_if %>

            </article>

        <main>

    </div>

</div>
