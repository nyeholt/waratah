<div class="nsw-form">
<% if $IncludeFormTag %>
<form $AttributesHTML>
<% end_if %>

    <% if $MessageType == 'good' %>
        <% include nswds/InPageNotification Icon='check_circle', Level='success', MessageTitle='Success', Message=$Message %>
    <% else_if $MessageType == 'warning' %>
        <% include nswds/InPageNotification Icon='error', Level='warning', MessageTitle='Warning', Message=$Message %>
    <% else_if $MessageType == 'error' %>
        <% include nswds/InPageNotification Icon='cancel', Level='error', MessageTitle='Error', Message=$Message %>
    <% else %>
        <% include nswds/InPageNotification Icon='info', Level='info', MessageTitle='Information', Message=$Message %>
    <% end_if %>

    <% if $VisibleFields.count > 0 %>
        <fieldset class="nsw-form-fieldset">
        <% if $Legend %><legend>$Legend</legend><% end_if %>
        <% loop $Fields %>
            {$FieldHolder}
        <% end_loop %>
        </fieldset>
    <% else  %>
        <% loop $Fields %>
            {$FieldHolder}
        <% end_loop %>
    <% end_if %>

    <% if $Actions %>
        <fieldset class="nsw-form-fieldset">
        <% loop $Actions %>
            {$Field}
        <% end_loop %>
        </fieldset>
    <% end_if %>

<% if $IncludeFormTag %>
</form>
<% end_if %>
</div>
