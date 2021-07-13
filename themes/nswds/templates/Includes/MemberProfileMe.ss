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

                    <% include PageForm %>

                <% else %>
                    <% include nswds/InPageNotification Level='warning', Icon='warning', Message='Your profile does not exist' %>
                <% end_if %>

            </article>
        </main>

    </div>

</div>
