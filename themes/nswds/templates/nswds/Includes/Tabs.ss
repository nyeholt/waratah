<% if $Tabs.count > 0 %>
<div class="nsw-tabs js-tabs">

    <ul class="nsw-tabs__list">
        <% loop $Tabs %>
            <li class="nsw-tabs__list-item">
              <a href="#{$URLSegment.ATT}" id="tab-for-{$URLSegment.ATT}" class="nsw-tabs__link">{$Title.XML}</a>
            </li>
        <% end_loop %>
    </ul>

    <% loop $Tabs %>
        <section id="{$URLSegment.ATT}" class="nsw-tabs__content">

            <% if $Tabs %>
                <% include nswds/Tabs Tabs=$Tabs %>
            <% else %>
                <div class="nsw-wysiwyg-content">
                    <% if $ElementalArea.Elements.Count > 0 %>
                        {$ElementalArea}
                    <% else_if $Content %>
                        {$Content}
                    <% end_if %>
                </div>
            <% end_if %>

        </section>
    <% end_loop %>

</div>
<% end_if %>
