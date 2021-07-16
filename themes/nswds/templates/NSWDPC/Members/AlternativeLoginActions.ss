<%-- displayed next to login form --%>
<div class="nsw-notification nsw-notification--info">
    <i class="material-icons nsw-material-icons nsw-notification__icon" focusable="false" aria-hidden="true">info</i>
    <div class="nsw-notification__content">
        <h4 class="nsw-notification__title">
            <%t NSWDPC\\Members\\Configuration.LOGIN_HELP 'Help' %>
        </h4>
        <ul>
            <li><a href="{$LostPasswordLink}"><%t NSWDPC\\Members\\Configuration.BUTTON_LOST_PASSWORD "I've lost my password" %></a></li>
            <li><a href="{$RegistrationLink}"><%t NSWDPC\\Members\\Configuration.BUTTON_REGISTER_TO_BECOME_MEMBER "Register to become a member" %></a></li>
        </ul>
    </div>
</div>
