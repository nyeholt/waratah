<div class="nsw-form__group notifications">
<% if $MessageType == 'good' %>
    <% include nswds/InPageAlert InPageAlert_Icon='check_circle', InPageAlert_Level='success', InPageAlert_Title='Success', InPageAlert_Content=$Message, InPageAlert_Cast=$MessageCast, InPageAlert_IsCompact=1 %>
<% else_if $MessageType == 'warning' %>
    <% include nswds/InPageAlert InPageAlert_Icon='error', InPageAlert_Level='warning', InPageAlert_Title='Sorry, an error occurred', InPageAlert_Content=$Message, InPageAlert_Cast=$MessageCast, InPageAlert_IsCompact=1 %>
<% else_if $MessageType == 'error' %>
    <% include nswds/InPageAlert InPageAlert_Icon='cancel', InPageAlert_Level='error', InPageAlert_Title='Sorry, there was a problem', InPageAlert_Content=$Message, InPageAlert_Cast=$MessageCast, InPageAlert_IsCompact=1 %>
<% else %>
    <% include nswds/InPageAlert InPageAlert_Icon='info', InPageAlert_Level='info', InPageAlert_Title='Information', InPageAlert_Content=$Message, InPageAlert_Cast=$MessageCast, InPageAlert_IsCompact=1 %>
<% end_if %>
</div>
