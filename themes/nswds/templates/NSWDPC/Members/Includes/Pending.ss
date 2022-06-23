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

                        <div class="nsw-p-top-md">
                        <ol class="wrth-list--icons">
                        <% loop Steps %>
                            <li><div class="icon"><% if $IsComplete %><% include nswds/Icon Icon_Icon='check_circle' %><% else %><% include nswds/Icon Icon_Icon='pending_actions' %><% end_if %></div> <div class="label">{$Label.XML}</div></li>
                        <% end_loop %>
                        </ol>
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

            <% include NSWDPC/Members/Links %>

            <% if $HasSideElements %>
                {$SideElementalArea}
            <% end_if %>

        </div>

    </div>

</div>
