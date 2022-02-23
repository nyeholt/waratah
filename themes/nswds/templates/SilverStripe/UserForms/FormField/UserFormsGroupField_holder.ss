<div id="$HolderID" class="nsw-form__group wrth-form__groupfield<% if $ParentExtraClass %> {$ParentExtraClass}<%end_if %>">

    <fieldset class="nsw-form__fieldset<% if $extraClass %> {$extraClass}<% end_if %>"<% if $RightTitle %> aria-describedby="{$Name}_right_title"<% end_if %>>

        <% if $Legend %>
            <legend>
                <span class="nsw-form__legend">{$Legend}</span>
            </legend>
        <% end_if %>

        <% loop $FieldList %>
            {$FieldHolder}
        <% end_loop %>

        <% if $RightTitle %><span id="{$Name}_right_title" class="nsw-form__helper">{$RightTitle}</span><% end_if %>

    </fieldset>

</div>
