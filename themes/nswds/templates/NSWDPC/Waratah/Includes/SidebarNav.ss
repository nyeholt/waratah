<% if $Level(1) %>
    <% with $Level(1) %>
        <% if $Children.Count > 0 %>
            <% include nswds/SideNavigation SideNavigation_SideNavItems=$Children, SideNavigation_SideNavLabel=$URLSegment, SideNavigation_SideNavLink=$Link, SideNavigation_SideNavHeader=$MenuTitle %>
        <% end_if %>
    <% end_with %>
<% end_if %>
