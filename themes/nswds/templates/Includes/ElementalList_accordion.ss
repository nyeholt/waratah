<% if $ShowTitle && $Title %>
    <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
        {$Title.XML}
    </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
<% end_if %>
<% if $HTML %>
    {$HTML}
<% end_if %>
<% if $Elements.Elements %>
    <div class="nsw-tabs js-tabs">
        <ul class="nsw-tabs__list">
            <% loop $Elements.Elements %>
                <li class="nsw-tabs__list-item">
                    <a href="#{$Anchor}" class="nsw-tabs__link">{$Title.XML}</a>
                </li>
            <% end_loop %>
        </ul>
        <% loop $Elements.Elements %>
            <section id="{$Anchor}" class="nsw-tabs__content">
                <div class='nsw-wysiwyg-content'>
                    <h2>{$Title.XML}</h2>
                    {$HTML}
                </div>
            </section>
        <% end_loop %>
    </div>
<% end_if %>
