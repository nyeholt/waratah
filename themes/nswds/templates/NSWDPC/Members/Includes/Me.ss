<div class="nsw-container nsw-p-top-sm nsw-p-bottom-lg">
    <div class="nsw-page-layout">

        <div class="nsw-page-layout__sidebar">

            <% include NSWDPC/Members/Links %>

            <% if $HasSideElements %>
                {$SideElementalArea}
            <% end_if %>

        </div>

        <main id="main-content" class="nsw-page-layout__main">

            <article>

                <div class="nsw-block">

                    <% include NSWDPC/Waratah/PageContentTitle %>

                    <% include NSWDPC/Waratah/PageContentAbstract %>

                    <% include NSWDPC/Members/Message %>

                </div>

                <% if $ExternalManagementContent %>

                    {$ExternalManagementContent}

                    <% include NSWDPC/Members/BasicMemberProfile %>

                <% else_if $Member %>

                    <% with $Member %>

                    <h3>Hi {$FirstName}!</h3>
                    <div>
                        <% if $Image %>
                            <% with $Image %>
                            <div>
                                $ResizedImage(300,300)
                            </div>
                            <% end_with %>
                        <% end_if %>
                        <% if Created %><p>Member Since : $Created.Nice</p><% end_if %>
                    </div>
                    <% end_with %>

                    <% include NSWDPC/Waratah/PageForm %>

                <% else %>
                    <% include nswds/InPageNotification InPageNotification_Level='warning', InPageNotification_Icon='warning', InPageNotification_Content='Your profile does not exist' %>
                <% end_if %>

            </article>
        </main>

    </div>

</div>
