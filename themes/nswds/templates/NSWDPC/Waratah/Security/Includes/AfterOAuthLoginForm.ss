<% if not $CurrentMember %>
    <% if $OAuthSupportAssistanceLink %>
        <p>
            <%t nswds.TROUBLE_SIGNING_IN_QUESTION "Having trouble with access to this website?" %>
            <a href="{$OAuthSupportAssistanceLink}"><%t OAUTH.SUPPORT_CALL_TO_ACTION "Start here" %></a>.
        </p>
    <% end_if %>
<% end_if %>
