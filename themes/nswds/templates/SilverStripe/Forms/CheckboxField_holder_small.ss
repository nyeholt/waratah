<div id="$HolderID" class="field nsw-form-group small<% if $ParentExtraClass %> {$ParentExtraClass}<%end_if %>">

     <div class="nsw-form-checkbox checkbox field">
        {$Field}
        <% if $Title %><label class="nsw-form-checkbox__label" for="$ID">$Title</label><% end_if %>
     </div>

     <% if $Description %><span class="nsw-form-helper">$Description</span><% end_if %>
     <% if $RightTitle %><span class="nsw-form-helper right">$RightTitle</span><% end_if %>

     <% include nswds/FormFieldMessage FormFieldMessage_Message=$Message, FormFieldMessage_MessageType=$MessageType %>

</div>
