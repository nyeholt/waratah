<aside class="nsw-page-layout__sidebar nsw-page-layout__sidebar--desktop">
    <% with $Level(1) %>
    <% include nswds/SideNavigation SideNavItems=$Children, SideNavLabel=$URLSegment, SideNavLink=$Link, SideNavHeader=$MenuTitle %>
    <% end_with %>
</aside>
