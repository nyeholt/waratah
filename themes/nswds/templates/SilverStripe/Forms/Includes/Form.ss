<% if $ApplyFormWrapper %><div class="nsw-form"><% end_if %>
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

    <div class="nsw-form__group actions">

    <% if $Actions %>
        <fieldset class="nsw-form__fieldset">
        <% loop $Actions %>
            {$Field}
        <% end_loop %>
        </fieldset>
    <% end_if %>

    </div>

<% if $IncludeFormTag %>
</form>
<% end_if %>
<% if $ApplyFormWrapper %></div><% end_if %>
