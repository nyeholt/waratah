<div id="$HolderID" class="nsw-form__group wrth-form__checkbox<% if $ParentExtraClass %> {$ParentExtraClass}<%end_if %>">


    <% include NSWDPC/Waratah/Forms/Description %>

     <div class="field">
        {$Field}
        <% if $Title %><label class="nsw-form__checkbox-label" for="$ID">$Title<% if $Required %><span class="nsw-form__required"></span><% end_if %></label><% end_if %>
     </div>

     <% include NSWDPC/Waratah/Forms/RightTitle %>

     <% include nswds/FormFieldMessage FormFieldMessage_IsCompact=1, FormFieldMessage_Message=$Message, FormFieldMessage_MessageType=$MessageType %>

</div>
