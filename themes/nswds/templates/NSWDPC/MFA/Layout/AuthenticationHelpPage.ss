<div class="nsw-container nsw-p-top-sm nsw-p-bottom-lg">

    <div class="nsw-page-layout">

        <main id="main-content" class="nsw-page-layout__main">

            <article>
                <div class="nsw-block">

                    <% include NSWDPC/Waratah/PageContentTitle %>
                    <% include NSWDPC/Waratah/PageContentAbstract %>
                    <% include NSWDPC/Waratah/PageContentAction %>


                </div>

                <% if $AuthenticationHelpShowAbove %>
                    <% if $AuthenticationHelpHeading %>
                        <% include NSWDPC/MFA/HelpHeading HeadingLevel=$AuthenticationHelpHeadingLevel, Heading=$AuthenticationHelpHeading %>
                    <% end_if %>

                    <% if $AuthenticationHelpContent %>
                        <% include NSWDPC/MFA/HelpContent %>
                    <% else %>
                        <!-- default -->
                        <% include NSWDPC/MFA/DefaultAuthenticationHelpContent TableClass='nsw-table' %>
                    <% end_if %>
                <% end_if %>

                <% if $supportsElemental && $ElementalArea && $ElementalArea.Elements.count > 0 %>

                    {$ElementalArea}

                <% end_if %>

            </article>

            <% include NSWDPC/Waratah/PageForm %>

        </main>

        <% if $HasSideElements %>
            <aside class="nsw-page-layout__sidebar nsw-page-layout__sidebar--desktop">
                <% include NSWDPC/Waratah/Sidebar %>
            </aside>
        <% end_if %>

    </div>

</div>
