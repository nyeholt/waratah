<% if $SectionNavigation %>

    <% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>

    <% include NSWDPC/Elemental/Models/Mediawesome/ItemList Items=$SectionNavigation.Sort('Sort') %>

<% end_if %>
