<fieldset class="nsw-form__fieldset nsw-m-bottom-md<% if $extraClass %> {$extraClass}<% end_if %>"<% if $RightTitle %> aria-describedby="{$Name}_right_title"<% end_if %>>

    <% if $Legend %>
        <legend class="nsw-form__legend">
            <span class="nsw-form-legend-text">{$Legend}</span>
        </legend>
    <% end_if %>

    <% loop $FieldList %>
        {$FieldHolder}
    <% end_loop %>

    <% if $RightTitle %><span id="{$Name}_right_title" class="nsw-form__helper">{$RightTitle}</span><% end_if %>

</fieldset>
