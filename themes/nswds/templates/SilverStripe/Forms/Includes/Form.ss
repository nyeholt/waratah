<% if not $HideFormWrapper %><div class="nsw-form"><% end_if %>
<% if $IncludeFormTag %>
<form $AttributesHTML>
<% end_if %>

    <div class="notifications">
    <% if $MessageType == 'good' %>
        <% include nswds/InPageNotification InPageNotification_Icon='check_circle', InPageNotification_Level='success', InPageNotification_Title='Success', InPageNotification_Content=$Message %>
    <% else_if $MessageType == 'warning' %>
        <% include nswds/InPageNotification InPageNotification_Icon='error', InPageNotification_Level='warning', InPageNotification_Title='Warning', InPageNotification_Content=$Message %>
    <% else_if $MessageType == 'error' %>
        <% include nswds/InPageNotification InPageNotification_Icon='cancel', InPageNotification_Level='error', InPageNotification_Title='Error', InPageNotification_Content=$Message %>
    <% else %>
        <% include nswds/InPageNotification InPageNotification_Icon='info', InPageNotification_Level='info', InPageNotification_Title='Information', InPageNotification_Content=$Message %>
    <% end_if %>
    </div>

    <div class="main">

    <% if $VisibleFields.count > 0 %>
        <fieldset class="nsw-form-fieldset">
        <% if $Legend %>
            <legend>
            <span class="nsw-form__legend">
            $Legend
            </span>
            </legend>
        <% end_if %>
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
        <fieldset class="nsw-form-fieldset actions">
        <% loop $Actions %>
            {$Field}
        <% end_loop %>
        </fieldset>
    <% end_if %>

    </div>

<% if $IncludeFormTag %>
</form>
<% end_if %>
<% if not $HideFormWrapper %></div><% end_if %>
