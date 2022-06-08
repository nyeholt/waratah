<%-- displayed on registration form --%>
<div class="nsw-m-top-md nsw-m-bottom-md">
    <div class="nsw-in-page-alert nsw-in-page-alert--info">
      <% include nswds/Icon Icon_Icon='info', Icon_IconExtraClass='nsw-in-page-alert__icon' %>
      <div class="nsw-in-page-alert__content">
        <h4><%t nswds.ALREADY_HAVE_AN_ACCOUNT 'Already have an account?' %></h4>
        <p>If you already have an account, you can <a href="{$SignInLink}">sign-in instead</a></p>
      </div>
    </div>
</div>
