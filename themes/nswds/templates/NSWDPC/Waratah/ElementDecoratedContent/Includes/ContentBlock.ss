<% if $ShowTitle && $Title %>

    <% include nswds/ContentBlock ContentBlock_ColumnOptions='nsw-col-12', ContentBlock_Title=$Title, ContentBlock_Image=$Image, ContentBlock_Link=$LinkTarget, ContentBlock_HTML=$HTML %>

<% else %>

    <% include nswds/ContentBlock ContentBlock_ColumnOptions='nsw-col-12', ContentBlock_Title='', ContentBlock_Image=$Image, ContentBlock_Link=$LinkTarget, ContentBlock_HTML=$HTML %>

<% end_if %>
