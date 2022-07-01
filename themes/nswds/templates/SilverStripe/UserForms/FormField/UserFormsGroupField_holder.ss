<div id="$HolderID" class="nsw-form__group wrth-form__groupfield<% if $ParentExtraClass %> {$ParentExtraClass}<%end_if %>">

    <fieldset class="nsw-form__fieldset<% if $extraClass %> {$extraClass}<% end_if %>"<% if $RightTitle %> aria-describedby="{$Name}_right_title"<% end_if %>>

        <% include NSWDPC/Waratah/Forms/Legend %>

        <% loop $FieldList %>
            {$FieldHolder}
        <% end_loop %>

        <% include NSWDPC/Waratah/Forms/RightTitle %>

    </fieldset>

</div>
