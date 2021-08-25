<span class="nsw-form-helper nsw-form__helper--<% if $FormFieldNotification_Level %>{$FormFieldNotification_Level}<% else %>error<% end_if %>"<% if $FormFieldNotification_Message == '' %> style="display: none"<% end_if %>>
  {$FormFieldNotification_Message}
</span>
