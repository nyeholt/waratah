<div class="nsw-in-page-alert<% if $FormFieldNotification_IsCompact == 1 %> nsw-in-page-alert--compact<% end_if %> nsw-in-page-alert--<% if $FormFieldNotification_Level %>{$FormFieldNotification_Level}<% else %>error<% end_if %>"<% if $FormFieldNotification_Message == '' %> style="display: none;"<% end_if %>>
    <% if $FormFieldNotification_Level == 'error' %>
        <% include nswds/Icon Icon_Icon='cancel', Icon_IconExtraClass='nsw-in-page-alert__icon' %>
    <% else %>
        <% include nswds/Icon Icon_Icon='info', Icon_IconExtraClass='nsw-in-page-alert__icon' %>
    <% end_if %>
    <div class="nsw-in-page-alert__content">
    <% if $FormFieldNotification_MessageCast == 'html' %>
        {$FormFieldNotification_Message.RAW}
    <% else %>
        <%-- TODO: limit HTML allowed ? --%>
        {$FormFieldNotification_Message.RAW}
    <% end_if %>
    </div>
</div>
