<% if $Tabs_Tabs.count > 0 %>
<div class="nsw-tabs js-tabs">

    <ul class="nsw-tabs__list">
        <% loop $Tabs_Tabs %>
        <% include nswds/TabsTab Tab_URLSegment=$URLSegment, Tab_Title=$Title, Tab_Pos=$Pos %>
        <% end_loop %>
    </ul>

    <% loop $Tabs_Tabs %>
        <% include nswds/TabsContent Tab_URLSegment=$URLSegment, Tab_Title=$Title, Tab_Pos=$Pos, Tab_ElementalArea=$ElementalArea, Tab_HTML=$HTML, Tab_Content=$Content %>
    <% end_loop %>

</div>
<% end_if %>
