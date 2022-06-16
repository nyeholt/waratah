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

                <% include NSWDPC/Waratah/PageElemental %>

                <% if $Form %>

                    <%-- local/external sign-in --%>

                    <div class="nsw-grid">
                        <div class="nsw-col nsw-col-xs-12 nsw-col-md-6">
                            <p><%t NSWDPC\Members\Configuration.SIGN_IN_USING_LOCAL_ACCOUNT 'Use a local account.' %></p>
                            <% include NSWDPC/Waratah/PageForm %>
                        </div>

                        <div class="nsw-col nsw-col-xs-12 nsw-col-md-6">
                            <p><%t NSWDPC\Members\Configuration.SIGN_IN_USING_EXTERNAL_SERVICE 'Use an external service.' %></p>
                            {$ExternalLoginForm}
                        </div>
                    </div>

                <% else %>

                    <p><%t NSWDPC\Members\Configuration.SIGN_IN_ONLY_USING_EXTERNAL_SERVICE 'Sign in to this website using an external service.' %></p>

                    <%-- no local sign in --%>
                    {$ExternalLoginForm}

                <% end_if %>

            </article>
        </main>

    </div>

</div>
