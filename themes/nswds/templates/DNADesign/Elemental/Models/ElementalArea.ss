<% if $ElementControllers.count > 0 %>
    <% loop $ElementControllers %>
        <% if $isTemplated %>
            {$TemplatedContent}
        <% else %>
            {$Me}
        <% end_if %>
    <% end_loop %>
<% end_if %>
