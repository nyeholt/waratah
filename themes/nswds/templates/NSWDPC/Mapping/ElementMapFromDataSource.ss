
<% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>

<% if $DataTablePosition=='Above' %>
<% if $DataTable %><div class="element-feature-mapping-datatable">{$DataTable}</div><% end_if %>
<% end_if %>

<figure class="nsw-media">
<% include MapForData %>

<% if $MapComments || $SourceOfData %>
<figcaption>
<% if $MapComments %>
{$MapComments.XML}
<% if $SourceOfData %><br><% end_if %>
<% end_if %>
<% if $SourceOfData %>
<%t nswds.MAP_DATA_SOURCE 'Source' %>: $SourceOfData
<% end_if %>
</figcaption>
<% end_if %>

</figure>

<% if $DataTablePosition=='Below' %>
  <% if $DataTable %><div class="element-feature-mapping-datatable">$DataTable</div><% end_if %>
<% end_if %>
