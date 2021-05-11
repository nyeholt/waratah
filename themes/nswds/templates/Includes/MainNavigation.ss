<% if $Top.UseAlternateSiteNavigation %>
    <% if $AlternateSiteNavigation %>
    {$AlternateSiteNavigation}
    <% end_if %>
<% else %>
    <% include SiteTreeNavigation %>
<% end_if %>
