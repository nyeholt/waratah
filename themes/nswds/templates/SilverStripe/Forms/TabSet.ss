<% if $Tabs.count > 0 %>
<div class="nsw-tabs js-tabs">

    <ul class="nsw-tabs__list">
        <% loop $Tabs %>
            <li class="nsw-tabs__list-item">
              <a href="#{$ID}" id="tab-$id" class="nsw-tabs__link">{$Title.XML}</a>
            </li>
        <% end_loop %>
    </ul>

    <% loop $Tabs %>
        <section id="{$ID}" class="nsw-tabs__content">

            <% if $Tabs %>
                $FieldHolder
            <% else %>
                <div class="nsw-wysiwyg-content">
                    <% loop $Fields %>
                        $FieldHolder
                    <% end_loop %>
                </div>
            <% end_if %>

        </section>
    <% end_loop %>

</div>
<% end_if %>
