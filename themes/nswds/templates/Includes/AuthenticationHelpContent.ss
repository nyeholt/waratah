<div class="nsw-container nsw-p-top-sm nsw-p-bottom-lg">

    <div class="nsw-page-layout">

        <% if $Menu(2) %>
            <% include NSWDPC/Waratah/Sidebar %>
        <% end_if %>

        <main id="main-content" class="nsw-page-layout__main">

            <article>
                <div class="nsw-block">

                    <% include NSWDPC/Waratah/PageContentTitle %>

                    <% include NSWDPC/Waratah/PageContentAbstract %>

                </div>

                <% include nswds/InPageNavigation InPageNavigation=$ElementNav %>

                <% if $AuthenticationHelpShowAbove %>
                    <% if $AuthenticationHelpHeading %>
                        <% include AuthenticationHelpHeading HeadingLevel=$AuthenticationHelpHeadingLevel, Heading=$AuthenticationHelpHeading %>
                    <% end_if %>

                    <% if $AuthenticationHelpContent %>
                        <!-- specific -->
                        {$AuthenticationHelpContent}
                    <% else %>
                        <!-- default -->
                        <% include DefaultAuthenticationHelpContent TableClass='nsw-table' %>
                    <% end_if %>
                <% end_if %>

                <% if $supportsElemental && $ElementalArea && $ElementalArea.Elements.count > 0 %>

                    {$ElementalArea}

                <% end_if %>

            </article>

            <% include NSWDPC/Waratah/PageForm %>

        </main>

    </div>

</div>
