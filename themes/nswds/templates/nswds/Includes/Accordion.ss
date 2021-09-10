<% if $Accordion_Items %>
<div class="nsw-accordion js-accordion">
    <% loop $Accordion_Items %>
    <h2 class="nsw-accordion__title">{$Title.XML}</h2>
    <div class="nsw-accordion__content">
        <div class="nsw-wysiwyg-content">
        <% if $Content %>
            {$Content.XML}
        <% else_if $HTML %>
            {$HTML}
        <% end_if %>
        </div>
    </div>
    <% end_loop %>
</div>
<% end_if %>
