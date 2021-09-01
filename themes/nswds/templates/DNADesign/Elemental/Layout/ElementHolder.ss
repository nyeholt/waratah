<section class="nsw-block<% if $StyleVariant %> $StyleVariant<% end_if %><% if $ExtraClass %> $ExtraClass<% end_if %> {$ElementShortName}" id="$Anchor">

    <% if $CurrentPage.IsLandingPage %>
        <%-- landing page elements can have containers and backgrounds --%>
        <% if $AddBackground %><div class="nsw-section--light-10"><% end_if %>
            <% if $AddContainer %><div class="nsw-container"><% end_if %>
                {$Element}
            <% if $AddContainer %></div><% end_if %>
        <% if $AddBackground %></div><% end_if %>
    <% else %>
        <%-- container/background ignored when not a landing page --%>
        {$Element}
    <% end_if %>

</section>
