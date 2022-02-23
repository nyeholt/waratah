<div id="$HolderID" class="nsw-form__group wrth-form__checkbox small<% if $ParentExtraClass %> {$ParentExtraClass}<%end_if %>">

     <div class="field">
        {$Field}
        <% if $Title %><label class="nsw-form__checkbox-label<% if $Required %> nsw-form__required<% end_if %>" for="$ID">$Title</label><% end_if %>
     </div>

     <% if $Description %><span class="nsw-form__helper">$Description</span><% end_if %>
     <% if $RightTitle %><span class="nsw-form__helper right">$RightTitle</span><% end_if %>

     <% include nswds/FormFieldMessage FormFieldMessage_Message=$Message, FormFieldMessage_MessageType=$MessageType %>

</div>
