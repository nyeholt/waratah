<div class="nsw-container nsw-p-top-sm nsw-p-bottom-lg">
    <div class="nsw-layout">

        <main id="main-content" class="nsw-layout__main">

            <article>

                <div class="nsw-block">

                    <% include NSWDPC/Waratah/PageContentTitle %>

                    <% include NSWDPC/Waratah/PageContentAbstract %>

                    <% include NSWDPC/Members/Message %>

                </div>


                <% if $Steps %>

                    <div class="nsw-block">

                        <% if $Progress %>
                            <% with $Progress %>
                                <p><%t NSWDPC\Members\Configuration.REGISTRATION_PROGRESS_PENDING_PROFILE_STEPS '{completedSteps} out of {totalSteps} steps in the registration process are complete.' completedSteps=$CompletedSteps totalSteps=$TotalSteps %></p>
                            <% end_with %>
                        <% end_if %>

                        <div class="nsw-steps nsw-steps--small nsw-steps--counters nsw-steps--dark">
                        <% loop Steps %>
                            <div class="nsw-steps__item<% if $IsComplete %> nsw-steps__item--fill<% end_if %>">
                                <div class="nsw-steps__content">
                                    <h4>{$Label.XML}<% if not $Required %> (<%t nswds.OPTIONAL 'optional' %>)<% end_if %></h4>
                                    <p>{$Description.XML}</p>
                                </div>
                            </div>
                        <% end_loop %>
                        </div>

                    </div>
                <% end_if %>

                <% if $SubTitle %>
                    <h2>{$SubTitle.XML}</h2>
                <% end_if %>

                <% include NSWDPC/Waratah/PageElemental %>

                <% include NSWDPC/Waratah/PageForm %>

            </article>
        </main>

        <div class="nsw-layout__sidebar">

        </div>

    </div>

</div>
