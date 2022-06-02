<section id="tabcontent-<% if $Tab_URLSegment %>{$Tab_URLSegment.ATT}<% else %>{$Tab_Pos}<% end_if %>" class="nsw-tabs__content">

    <% if $Tab_Tabs %>
        <%-- nested tabs --%>
        <% include nswds/Tabs Tabs=$Tab_Tabs %>
    <% else %>
        <% if $Tab_ElementalArea.Elements.Count > 0 %>
            {$Tab_ElementalArea}
        <% else_if $Tab_HTML %>
            {$Tab_HTML}
        <% else_if $Tab_Content %>
            {$Tab_Content.XML}
        <% end_if %>
    <% end_if %>

</section>
