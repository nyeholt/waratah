<% if $SideNavigation_SideNavItems.Count > 0 %>
<nav class="nsw-sidenav" aria-labelledby="<% if $SideNavigation_SideNavLabel %>{$SideNavigation_SideNavLabel.XML}<% else %>sidenav<% end_if %> side navigation">
    <% if $SideNavigation_SideNavHeader %>
    <div class="nsw-sidenav__header">
        <h2 id="<% if $SideNavigation_SideNavLabel %>{$SideNavigation_SideNavLabel.XML}<% else %>sidenav<% end_if %>" class="nsw-sidenav__heading">
            <% if $SideNavigation_SideNavLink %>
            <a href="{$SideNavigation_SideNavLink.XML}" class="nsw-sidenav__heading-link">
            {$SideNavigation_SideNavHeader.XML}
            </a>
            <% else %>
            <span>
            {$SideNavigation_SideNavHeader.XML}
            </span>
            <% end_if %>
        </h2>
    </div>
    <% end_if %>
    <% include nswds/SideNavigation_Children SideNavigation_Children=$SideNavigation_SideNavItems, SideNavigation_PageLevel=$PageLevel %>
</nav>
<% end_if %>
