<% if $HasSideElements %>
    {$SideElementalArea}
<% else %>
    <% include nswds/SideNavigation SideNavigation_SideNavItems=$Children, SideNavigation_SideNavLabel=$URLSegment, SideNavigation_SideNavLink=$Link, SideNavigation_SideNavHeader=$MenuTitle %>
<% end_if %>
