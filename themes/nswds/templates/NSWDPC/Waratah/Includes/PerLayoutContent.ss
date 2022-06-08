<%-- Apply per layout content without the need to implement page layouts --%>

<% if $PerLayoutContentTemplate %>

    {$PerLayoutContent($PerLayoutContentTemplate)}

<% else_if $Top.ClassName == 'nglasl\\mediawesome\\MediaHolder' %>

    <%-- media holder children --%>
    <% include MediaHolderChildren %>

<% else_if $Top.ClassName == 'nglasl\\mediawesome\\MediaPage' %>

    <%-- media page --%>

    <% if $RecentPosts.Exclude('ID', $ID) %>

        <section class="nsw-section<% if $SpacingClass %> {$SpacingClass}<% end_if %>">

        <% if $Top.IsLandingPage %>
            <div class="nsw-container">
        <% end_if %>

                <h2><%t ausday.YOU_MAY_ALSO_BE_INTERESTED_IN 'You may be interested in...' %></h2>

                <% include NSWDPC/Elemental/Models/Mediawesome/ItemList Items=$RecentPosts.Exclude('ID', $ID) %>

                <div class="nsw-block">
                    <a href="{$Parent.Link}" class="nsw-button nsw-button--dark" title="View all news"><%t ausday.VIEW_ALL_NEWS 'View all news' %></a>
                    </div>
                </div>

        <% if $Top.IsLandingPage %>
            </div>
        <% end_if %>

        </section>

    <% end_if %>

<% end_if %>
