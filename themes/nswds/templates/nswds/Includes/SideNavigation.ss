<% if $SideNavItems.Count > 0 %>
<nav class="nsw-sidenav" aria-labelledby="<% if SideNavLabel %>{$SideNavLabel.XML}<% else %>sidenav<% end_if %> side navigation">
    <% if $SideNavHeader %>
    <div class="nsw-sidenav__header">
        <h2 id="<% if SideNavLabel %>{$SideNavLabel.XML}<% else %>sidenav<% end_if %>" class="nsw-sidenav__heading">
            <% if $SideNavLink %>
            <a href="{$SideNavLink.XML}" class="nsw-sidenav__heading-link">
            {$SideNavHeader.XML}
            </a>
            <% else %>
            <span>
            {$SideNavHeader.XML}
            </span>
            <% end_if %>
        </h2>
    </div>
    <% end_if %>
    <% include nswds/SideNavigation_Children Children=$SideNavItems %>
</nav>
<% end_if %>
