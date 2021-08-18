<% if $Tabs.count > 0 %>
<div class="nsw-tabs js-tabs">

    <ul class="nsw-tabs__list">
        <% loop $Tabs %>
        <% include nswds/TabsTab %>
        <% end_loop %>
    </ul>

    <% loop $Tabs %>
        <% include nswds/TabsContent %>
    <% end_loop %>

</div>
<% end_if %>
