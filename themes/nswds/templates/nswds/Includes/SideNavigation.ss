<% if $SideNavigation_SideNavItems.Count > 0 %>
<nav class="nsw-side-nav" aria-labelledby="<% if $SideNavigation_SideNavLabel %>{$SideNavigation_SideNavLabel.HTMLATT}<% else %>sidenav<% end_if %>">
    <% if $SideNavigation_SideNavHeader %>
    <div class="nsw-side-nav__header" id="<% if $SideNavigation_SideNavLabel %>{$SideNavigation_SideNavLabel.HTMLATT}<% else %>sidenav<% end_if %>">
        <% if $SideNavigation_SideNavLink %>
        <a href="{$SideNavigation_SideNavLink.XML}" class="nsw-side-nav__heading-link">{$SideNavigation_SideNavHeader.XML}</a>
        <% else %>
        <span class="nsw-side-nav__heading-link">{$SideNavigation_SideNavHeader.XML}</span>
        <% end_if %>
    </div>
    <% end_if %>
    <% include nswds/SideNavigation_Children SideNavigation_Children=$SideNavigation_SideNavItems, SideNavigation_PageLevel=$PageLevel %>
</nav>
<% end_if %>
