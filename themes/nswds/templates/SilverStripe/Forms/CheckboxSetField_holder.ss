<div id="$HolderID" class="nsw-form-group<% if $ParentExtraClass %> {$ParentExtraClass}<%end_if %>">

    <fieldset class="nsw-form-fieldset">

        <legend>
           <% if $Title %><span class="nsw-form-legend-text">$Title</span><% end_if %>
           <% if $Description %><span class="nsw-form-helper">$Description</span><% end_if %>
           <% if $RightTitle %><span class="nsw-form-helper right">$RightTitle</span><% end_if %>
           <% include nswds/FormFieldMessage FormFieldMessage_Message=$Message, FormFieldMessage_MessageType=$MessageType %>
         </legend>

        {$Field}

    </fieldset>

</div>
