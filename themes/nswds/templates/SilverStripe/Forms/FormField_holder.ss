<div id="$HolderID" class="nsw-form__group<% if $ParentExtraClass %> {$ParentExtraClass}<%end_if %>">

    <% if $Title %><label class="nsw-form__label left<% if $Required %> nsw-form__required<% end_if %>" for="$ID">$Title</label><% end_if %>

    <% if $Description %><span class="nsw-form__helper">$Description</span><% end_if %>

    <div class="field">
    {$Field}
    </div>

    <% include nswds/FormFieldMessage FormFieldMessage_Message=$Message, FormFieldMessage_MessageType=$MessageType, FormFieldMessage_MessageCast=$MessageCast %>

    <% if $RightTitle %><span class="nsw-form__helper right" for="$ID">{$RightTitle}</span><% end_if %>

</div>
