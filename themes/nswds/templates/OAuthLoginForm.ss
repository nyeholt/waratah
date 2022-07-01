<% include NSWDPC/Waratah/Security/BeforeOAuthLoginForm %>


<form $AttributesHTML>

    <% include NSWDPC/Waratah/Forms/Notifications %>

    <div class="nsw-form__group main">

    <% if $VisibleFields.count > 0 %>
        <fieldset class="nsw-form__fieldset">
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

    </div>

    <% include NSWDPC/Waratah/Forms/Actions %>

</form>


<% include NSWDPC/Waratah/Security/AfterOAuthLoginForm %>
