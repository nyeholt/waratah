<div class="nsw-container nsw-p-top-sm nsw-p-bottom-lg">
    <div class="nsw-page-layout">

        <div class="nsw-page-layout__sidebar">

            <% include MemberProfileLinks %>

        </div>

        <main id="main-content" class="nsw-page-layout__main">

            <article>

                <div class="nsw-block">

                    <% include PageContentTitle %>

                    <% include PageContentAbstract %>

                    <% include MemberProfileMessage %>

                </div>

                <% if $Member %>
                    <% if $ProfilePages %>
                        <% include nswds/InPageNotification Level='info', Icon='article', MessageTitle='Information', Message='You have access to the following pages on this website' %>
                        <% include nswds/ContentBlocks Items=$ProfilePages %>
                    <% else %>
                        <% include nswds/InPageNotification Level='info', Icon='article', MessageTitle='Information', Message='Nothing is available here, at the moment' %>
                    <% end_if %>
                <% else %>
                    <% include nswds/InPageNotification Level='warning', Icon='warning', MessageTitle='Information', Message='Access denied' %>
                <% end_if %>

            </article>

        <main>

    </div>

</div>
