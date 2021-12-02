<% if $Tabs_Tabs.count > 0 %>
<div class="nsw-tabs js-tabs">

    <ul class="nsw-tabs__list">
        <% loop $Tabs_Tabs %>
        <% include nswds/TabsTab Tab_Pos=$Pos %>
        <% end_loop %>
    </ul>

    <% loop $Tabs_Tabs %>
        <% include nswds/TabsContent Tab_Pos=$Pos %>
    <% end_loop %>

</div>
<% end_if %>
