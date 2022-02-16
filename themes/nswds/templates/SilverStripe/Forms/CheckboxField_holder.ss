<div id="$HolderID" class="field nsw-form__group<% if $ParentExtraClass %> {$ParentExtraClass}<%end_if %>">

     <div class="wrth-form-checkbox checkbox field">
        {$Field}
        <% if $Title %><label class="nsw-form__checkbox-label" for="$ID">$Title<% if $Required %><span class="nsw-form__required"></span><% end_if %></label><% end_if %>
     </div>

     <% if $Description %><span class="nsw-form__helper">$Description</span><% end_if %>
     <% if $RightTitle %><span class="nsw-form__helper right">$RightTitle</span><% end_if %>

     <% include nswds/FormFieldMessage FormFieldMessage_Message=$Message, FormFieldMessage_MessageType=$MessageType %>

</div>
