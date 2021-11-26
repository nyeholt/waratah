<div class="nsw-accordion js-accordion">
    <% include nswds/Accordion_ExpandContract Accordion_ExpandContract=1 %>
    <div class="nsw-accordion__title">{$Title.XML}</div>
    <div class="nsw-accordion__content">
        <div class="nsw-wysiwyg-content">
            <% loop $FieldList %>
                $FieldHolder
            <% end_loop %>
        </div>
    </div>
</div>
