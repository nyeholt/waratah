<% if $FormFieldMessage_Message %>
    <% if $FormFieldMessage_MessageType == 'bad' || $FormFieldMessage_MessageType == 'error' || $FormFieldMessage_MessageType == 'required' %>
        <% include nswds/FormFieldNotification FormFieldNotification_Icon='cancel', FormFieldNotification_Level='error', FormFieldNotification_MessageTitle='Error', FormFieldNotification_Message=$FormFieldMessage_Message, FormFieldNotification_MessageCast=$FormFieldMessage_MessageCast %>
    <% else %>
        <% include nswds/FormFieldNotification FormFieldNotification_Icon='valid', FormFieldNotification_Level='valid', FormFieldNotification_MessageTitle='Information', FormFieldNotification_Message=$FormFieldMessage_Message, FormFieldNotification_MessageCast=$FormFieldMessage_MessageCast %>
    <% end_if %>
<% end_if %>
