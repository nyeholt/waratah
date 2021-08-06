<% if $Level(1) %>
<% with $Level(1) %>
    <%  if $Children.Count > 0 %>
<aside class="nsw-page-layout__sidebar nsw-page-layout__sidebar--desktop">
    <% include nswds/SideNavigation SideNavItems=$Children, SideNavLabel=$URLSegment, SideNavLink=$Link, SideNavHeader=$MenuTitle %>
</aside>
    <% end_if %>
<% end_with %>
<% end_if %>
