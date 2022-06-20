<% include NSWDPC/Waratah/Security/BeforeOAuthLoginForm %>


<form $AttributesHTML>

    <div class="notifications nsw-block">
    <% if $MessageType == 'good' || $MessageType == 'success' %>
        <% include nswds/InPageNotification InPageNotification_Icon='check_circle', InPageNotification_Level='success', InPageNotification_Title='Success', InPageNotification_Content=$Message, InPageNotification_Cast=$MessageCast %>
    <% else_if $MessageType == 'warning' %>
        <% include nswds/InPageNotification InPageNotification_Icon='error', InPageNotification_Level='warning', InPageNotification_Title='Sorry, an error occurred', InPageNotification_Content=$Message, InPageNotification_Cast=$MessageCast %>
    <% else_if $MessageType == 'error' || $MessageType == 'bad' || $MessageType == 'required' %>
        <% include nswds/InPageNotification InPageNotification_Icon='cancel', InPageNotification_Level='error', InPageNotification_Title='Sorry, there was a problem', InPageNotification_Content=$Message, InPageNotification_Cast=$MessageCast %>
    <% else %>
        <% include nswds/InPageNotification InPageNotification_Icon='info', InPageNotification_Level='info', InPageNotification_Title='Information', InPageNotification_Content=$Message, InPageNotification_Cast=$MessageCast %>
    <% end_if %>
    </div>

    <div class="main nsw-block">

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

    <% if $Actions %>
        <fieldset class="nsw-form__fieldset actions">
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
