<section id="tabcontent-{$Tab_URLSegment.ATT}" class="nsw-tabs__content">

    <% if $Tab_Tabs %>
        <% include nswds/Tabs Tabs=$Tab_Tabs %>
    <% else %>
        <div class="nsw-wysiwyg-content">
            <% if $Tab_ElementalArea.Elements.Count > 0 %>
                {$Tab_ElementalArea}
            <% else_if $Tab_HTML %>
                {$Tab_HTML}
            <% else_if $Tab_Content %>
                {$Tab_Content.XML}
            <% end_if %>
        </div>
    <% end_if %>

</section>
