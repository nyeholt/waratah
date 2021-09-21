<div class="nsw-notification nsw-notification--<% if $InPageNotification_Level %>{$InPageNotification_Level}<% else %>info<% end_if %>"<% if $InPageNotification_Content == '' %> style="display: none"<% end_if %>>

  <% if $InPageNotification_Icon %>
    <% include nswds/Icon Icon_Icon=$InPageNotification_Icon, Icon_IconExtraClass='nsw-notification__icon' %>
  <% end_if %>

  <div class="nsw-notification__content">

    <% if $InPageNotification_Title %>
        <h4 class="nsw-notification__title">{$InPageNotification_Title.XML}</h4>
    <% end_if %>

    <% if $InPageNotification_Content %>
        <% if $InPageNotification_Cast == 'html' %>
            <%-- TODO: limited HTML? --%>
            <div>{$InPageNotification_Content.RAW}</div>
        <% else %>
            <p>{$InPageNotification_Content.XML}</p>
        <% end_if %>
    <% end_if %>

  </div>

</div>
