<% if $Options.Count %>
    <% loop $Options %>
    	<input id="$ID" class="nsw-form__radio-input" name="$Name" type="radio" value="$Value"<% if $isChecked %> checked<% end_if %><% if $isDisabled %> disabled<% end_if %> <% if $Up.Required %>required<% end_if %><% if $Top.getValidationAttributesHTML %> {$Top.getValidationAttributesHTML().RAW}<% end_if %> />
    	<label for="$ID" class="nsw-form__radio-label">$Title</label>
    <% end_loop %>
<% else %>
    <% include nswds/FormFieldNotification FormFieldNotification_IsCompact=1, FormFieldNotification_Icon='info', FormFieldNotification_Level='info', FormFieldNotification_Message='No options available' %>
<% end_if %>
