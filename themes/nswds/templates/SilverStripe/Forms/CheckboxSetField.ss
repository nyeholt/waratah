<div class="nsw-form-checkbox">
<% if $Options.Count %>
    <% loop $Options %>
        <input id="$ID" class="nsw-form-checkbox__input" name="$Name" type="checkbox" value="$Value.ATT"<% if $isChecked %> checked="checked"<% end_if %><% if $isDisabled %> disabled="disabled"<% end_if %> />
        <label for="$ID" class="nsw-form-checkbox__label">$Title</label>
    <% end_loop %>
<% else %>
    <% include nswds/FormFieldNotification Icon='info', Level='info', Message='No options available' %>
<% end_if %>
</div>
