<div id="{$Name}" class="nsw-form__group<% if $extraClass %> {$extraClass}<% end_if %>">

    <fieldset class="nsw-form__fieldset">
        <% include NSWDPC/Waratah/Forms/Legend %>

        <div class="nsw-form__group">
            <% loop $FieldList %>
                {$Field}
            <% end_loop %>
        </div>

        <% include NSWDPC/Waratah/Forms/RightTitle %>

        <% if $Message %>
            <% include nswds/FormFieldMessage FormFieldMessage_IsCompact=1, FormFieldMessage_Message=$Message, FormFieldMessage_MessageType=$MessageType %>
        <% end_if %>

    </fieldset>

</div>
