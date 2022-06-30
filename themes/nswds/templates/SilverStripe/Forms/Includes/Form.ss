<% if $IncludeFormTag %>
<form $AttributesHTML>
<% end_if %>

    <% include NSWDPC/Waratah/Forms/Notifications %>

    <div class="nsw-form__group main">

    <% if $VisibleFields.count > 0 %>
        <fieldset class="nsw-form__fieldset">
        <% include NSWDPC/Waratah/Forms/Legend %>
        <% loop $Fields %>
            {$FieldHolder}
        <% end_loop %>
        </fieldset>
    <% else  %>
        <% loop $Fields %>
            {$FieldHolder}
        <% end_loop %>
    <% end_if %>

    </div>

    <% include NSWDPC/Waratah/Forms/Actions %>

<% if $IncludeFormTag %>
</form>
<% end_if %>
