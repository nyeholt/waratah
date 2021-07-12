<div id="$HolderID" class="nsw-form-group">

    <fieldset class="nsw-form-fieldset">

        <legend>
           <% if $Title %><span class="nsw-form-legend-text">$Title</span><% end_if %>
           <% if $Description %><span class="nsw-form-helper">$Description</span><% end_if %>
           <% include nswds/FormFieldMessage Message=$Message, MessageType=$MessageType %>
         </legend>

         <div class="nsw-form-radio">
         {$Field}
         </div>

         <% if $RightTitle %><span class="nsw-form-helper right">$RightTitle</span><% end_if %>

    </fieldset>

</div>
