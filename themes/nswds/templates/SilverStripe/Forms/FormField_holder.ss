<div id="$HolderID" class="nsw-form__group<% if $ParentExtraClass %> {$ParentExtraClass}<%end_if %>">

    <% if $Title %><label class="nsw-form__label left<% if $Required %> nsw-form__required<% end_if %>" for="$ID">$Title</label><% end_if %>

    <% include NSWDPC/Waratah/Forms/Description %>

    <div class="field">
    {$Field}
    </div>

    <% include nswds/FormFieldMessage FormFieldMessage_IsCompact=1, FormFieldMessage_Message=$Message, FormFieldMessage_MessageType=$MessageType, FormFieldMessage_MessageCast=$MessageCast %>

    <% include NSWDPC/Waratah/Forms/RightTitle %>

</div>
