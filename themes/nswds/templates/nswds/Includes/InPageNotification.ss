<div class="nsw-notification nsw-notification--<% if $InPageNotification_Level %>{$InPageNotification_Level}<% else %>info<% end_if %>"<% if $InPageNotification_Message == '' %> style="display: none"<% end_if %>>
  <% if $InPageNotification_Icon %>
    <% include nswds/Icon Icon_Icon=$InPageNotification_Icon, Icon_IconExtraClass='nsw-notification__icon' %>
  <% end_if %>
  <div class="nsw-notification__content">

    <% if $InPageNotification_Title %>
        <h4 class="nsw-notification__title">{$InPageNotification_Title.XML}</h4>
    <% else_if $InPageNotification_MessageTitle %>
        <h4 class="nsw-notification__title">{$InPageNotification_MessageTitle.XML}</h4>
    <% end_if %>

    <% if $InPageNotification_Content %>
        <p>{$InPageNotification_Content.XML}</p>
    <% else_if $InPageNotification_Message %>
        <%-- retained for BC --%>
        <p>{$InPageNotification_Message.XML}</p>
    <% end_if %>

  </div>
</div>
