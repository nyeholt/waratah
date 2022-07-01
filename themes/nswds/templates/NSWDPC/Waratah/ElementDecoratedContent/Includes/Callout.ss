
<% if $ShowTitle && $Title %>
    <% include nswds/Callout Callout_HTML=$HTML, Callout_Title=$Title, Callout_Link=$LinkTarget %>
<% else %>
    <% include nswds/Callout Callout_HTML=$HTML, Callout_Title='', Callout_Link=$LinkTarget %>
<% end_if %>
