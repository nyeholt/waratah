<div id="$HolderID" class="nsw-form-group">

     <div class="nsw-form-checkbox">
        {$Field}
        <% if $Title %><label class="nsw-form-checkbox__label" for="$ID">$Title</label><% end_if %>
     </div>

     <% if $Description %><span class="nsw-form-helper">$Description</span><% end_if %>
     <% if $RightTitle %><span class="nsw-form-helper right">$RightTitle</span><% end_if %>

     <% include nswds/FormFieldMessage Message=$Message, MessageType=$MessageType %>

</div>
