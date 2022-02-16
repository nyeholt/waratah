<div id="$HolderID" class="nsw-form__group">

    <% if $Title %><label class="nsw-form__label left" for="$ID">$Title</label><% end_if %>
    <% if $Description %><span class="nsw-form__helper">$Description</span><% end_if %>

    <% include nswds/FormFieldMessage FormFieldMessage_Message=$Message, FormFieldMessage_MessageType=$MessageType %>

    {$Field}

    <% if $RightTitle %><span class="nsw-form__helper right" for="$ID">$RightTitle</span><% end_if %>

</div>
