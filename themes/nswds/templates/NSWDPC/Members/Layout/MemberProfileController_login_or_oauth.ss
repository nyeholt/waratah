<%-- todo move to include --%>
<% include NSWDPC/Members/ContainerStart %>

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

    <p><%t NSWDPC\Members\Configuration.SIGN_IN_ONLY_USING_EXTERNAL_SERVICE 'Sign in to this website using an external service. %></p>

    <%-- no local sign in --%>
    {$ExternalLoginForm}

<% end_if %>

<% include NSWDPC/Members/ContainerEnd %>
