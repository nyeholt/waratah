<% if $Top.UseAlternateSiteNavigation %>
    <% if $AlternateSiteNavigation %>
    {$AlternateSiteNavigation}
    <% end_if %>
<% else %>
    <% include NSWDPC/Waratah/SiteTreeNavigation %>
<% end_if %>
