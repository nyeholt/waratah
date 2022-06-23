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

    <div class="nsw-form__group actions">

    <% if $Actions %>
        <fieldset class="nsw-form__fieldset">
        <div class="nsw-grid">
        <% loop $Actions %>
            <div class="nsw-col nsw-col-xs-12 nsw-col-sm-6">
                <div class="nsw-section nsw-section--box">
                    <% if $Description %>
                    <h3>{$Description}</h3>
                    <% end_if %>
                    <% if $RightTitle %>
                    <p>{$RightTitle}</p>
                    <% end_if %>
                    {$Field}
                </div>
            </div>
        <% end_loop %>
        </div>
        </fieldset>
    <% end_if %>

    </div>

</form>


<% include NSWDPC/Waratah/Security/AfterOAuthLoginForm %>
