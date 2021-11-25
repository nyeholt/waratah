<div id="$HolderID" class="field nsw-form-group small<% if $ParentExtraClass %> {$ParentExtraClass}<%end_if %>">

    <% if $Title %><label class="nsw-form-label left<% if $Required %> nsw-form__required<% end_if %>" for="$ID">$Title</label><% end_if %>

    <% if $Description %><span class="nsw-form-helper">$Description</span><% end_if %>

    <% include nswds/FormFieldMessage FormFieldMessage_Message=$Message, FormFieldMessage_MessageType=$MessageType %>

    {$Field}

    <% if $RightTitle %><span class="nsw-form-helper right" for="$ID">$RightTitle</span><% end_if %>

</div>
