<% if $ShowTitle && $Title %>
    <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
        {$Title.XML}
    </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
<% end_if %>
<% if $HTML %>
    {$HTML}
<% end_if %>
<% if $Elements.Elements %>
    <div class="nsw-accordion js-accordion">
        <% loop $Elements.Elements %>
        <h2 class="nsw-accordion__title">{$Title.XML}</h2>
        <div class="nsw-accordion__content">
            <div class="nsw-wysiwyg-content">
                {$HTML}
            </div>
        </div>
        <% end_loop %>
    </div>
<% end_if %>
