<div id="$HolderID" class="nsw-form__group wrth-form__checkboxset<% if $ParentExtraClass %> {$ParentExtraClass}<%end_if %>">

    <fieldset class="nsw-form__fieldset">

        <legend>
            <% if $Title %><span class="nsw-form__legend<% if $Required %> nsw-form__required<% end_if %>">$Title</span><% end_if %>
            <% if $Description %><span class="nsw-form__helper">$Description</span><% end_if %>
            <% if $RightTitle %><span class="nsw-form__helper right">$RightTitle</span><% end_if %>
            <% include nswds/FormFieldMessage FormFieldMessage_Message=$Message, FormFieldMessage_MessageType=$MessageType %>
        </legend>

        <div class="field">
        {$Field}
        </div>

    </fieldset>

</div>
