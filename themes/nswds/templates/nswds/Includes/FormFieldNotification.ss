<span class="nsw-form-helper nsw-form__helper--<% if $FormFieldNotification_Level %>{$FormFieldNotification_Level}<% else %>error<% end_if %>"<% if $FormFieldNotification_Message == '' %> style="display: none"<% end_if %>>
<% if $FormFieldNotification_MessageCast == 'html' %>
    {$FormFieldNotification_Message.RAW}
<% else %>
    <%-- TODO: limit HTML allowed ? --%>
    {$FormFieldNotification_Message.RAW}
<% end_if %>
</span>
