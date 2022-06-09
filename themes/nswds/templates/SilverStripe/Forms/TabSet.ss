<% if $Tabs.count > 0 %>
<div id="{$HolderID}" class="nsw-form__group wrth-form__composite<% if $Zebra %> {$Zebra}<% end_if %><% if $ParentExtraClass %> {$ParentExtraClass}<% end_if %>" data-is-composite="1">

    <div class="nsw-tabs js-tabs">

        <ul class="nsw-tabs__list">
            <% loop $Tabs %>
                <li>
                  <a href="#{$ID}" id="tab-$id">{$Title.XML}</a>
                </li>
            <% end_loop %>
        </ul>

        <% loop $Tabs %>
            <section id="{$ID}" class="nsw-tabs__content">

                <% if $Tabs %>
                    $FieldHolder
                <% else %>
                    <% loop $Fields %>
                        $FieldHolder
                    <% end_loop %>
                <% end_if %>

            </section>
        <% end_loop %>

    </div>

</div>
<% end_if %>
