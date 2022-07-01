
    <% if $AuthenticationHelpHeading %>
        <% include NSWDPC/MFA/HelpHeading HeadingLevel=$AuthenticationHelpHeadingLevel, Heading=$AuthenticationHelpHeading %>
    <% end_if %>

    <% if $AuthenticationHelpContent %>
        {$AuthenticationHelpContent}
    <% else %>
        <!-- default -->
        <% include NSWDPC/MFA/DefaultAuthenticationHelpContent TableClass='nsw-table' %>
    <% end_if %>
