<div class="nsw-accordion js-accordion">
    <h$HeadingLevel class="nsw-accordion__title">{$Title.XML}</h$HeadingLevel>
    <div class="nsw-accordion__content">
        <div class="nsw-wysiwyg-content">
            <% loop $FieldList %>
                $FieldHolder
            <% end_loop %>
        </div>
    </div>
</div>
