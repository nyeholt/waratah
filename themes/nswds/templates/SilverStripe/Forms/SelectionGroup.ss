
<div class="nsw-tabs js-tabs">

    <ul class="nsw-tabs__list">
    <% loop $FieldSet %>
        <li class="nsw-tabs__list-item<% if Selected %> is-selected<% end_if %>">
            <a class="nsw-tabs__link" href="#{$ID}-{$Pos}">
                 {$RadioButton} {$RadioLabel}
            </a>
        </li>
    <% end_loop %>
    </ul>

    <% loop $FieldSet %>

        <section id="{$ID}-{$Pos}" class="nsw-tabs__content">

            <% if $FieldList %>
                $FieldHolder
            <% end_if %>

        </section>

    <% end_loop %>

</div>
