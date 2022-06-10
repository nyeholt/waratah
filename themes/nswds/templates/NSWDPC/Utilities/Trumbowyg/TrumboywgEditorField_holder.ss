<div id="$HolderID" class="nsw-form__group wrth-form__trumbowyg">

    <% if $Title %><label class="nsw-form__label left" for="$ID">$Title</label><% end_if %>

    <% include NSWDPC/Waratah/Forms/Description %>

    <% include nswds/FormFieldMessage FormFieldMessage_IsCompact=1, FormFieldMessage_Message=$Message, FormFieldMessage_MessageType=$MessageType %>

    <div class="field">
    {$Field}
    </div>

    <% include NSWDPC/Waratah/Forms/RightTitle %>

</div>
