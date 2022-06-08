<%-- displayed next to login form --%>
<div class="nsw-in-page-alert nsw-in-page-alert--info">
    <% include nswds/Icon Icon_Icon='info', Icon_IconExtraClass='nsw-in-page-alert__icon' %>
    <div class="nsw-in-page-alert__content">
        <h5>
            <%t NSWDPC\\Members\\Configuration.LOGIN_HELP 'Help' %>
        </h5>
        <ul>
            <li><a href="{$LostPasswordLink}"><%t NSWDPC\\Members\\Configuration.BUTTON_LOST_PASSWORD "I've lost my password" %></a></li>
            <li><a href="{$RegistrationLink}"><%t NSWDPC\\Members\\Configuration.BUTTON_REGISTER_TO_BECOME_MEMBER "Register to become a member" %></a></li>
        </ul>
    </div>
</div>
