<% if $Options.Count %>
    <% loop $Options %>
    	<input id="$ID" class="nsw-form-radio__input" name="$Name" type="radio" value="$Value"<% if $isChecked %> checked<% end_if %><% if $isDisabled %> disabled<% end_if %> <% if $Up.Required %>required<% end_if %> />
    	<label for="$ID" class="nsw-form-radio__label">$Title</label>
    <% end_loop %>
<% else %>
    <% include FormFieldNotification Icon='info', Level='info', Message='No options available' %>
<% end_if %>
