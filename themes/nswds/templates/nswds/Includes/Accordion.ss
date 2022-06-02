<% if $Accordion_Items %>
<div class="nsw-accordion js-accordion">
    <% include nswds/Accordion_ExpandContract Accordion_ExpandContract=$Accordion_ExpandContract %>
    <% loop $Accordion_Items %>
    <div class="nsw-accordion__title">{$Title.XML}</div>
    <div class="nsw-accordion__content">
        <% if $Content %>
            <p>{$Content.XML}</p>
        <% else_if $HTML %>
            {$HTML}
        <% end_if %>
    </div>
    <% end_loop %>
</div>
<% end_if %>
