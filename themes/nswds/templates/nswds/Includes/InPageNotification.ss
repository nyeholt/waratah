<div class="nsw-notification nsw-notification--<% if $InPageNotification_Level == 'good' || $InPageNotification_Level == 'success' %>success<% else_if $InPageNotification_Level == 'warning' %>warning<% else_if $InPageNotification_Level == 'error' || $InPageNotification_Level == 'bad' || $InPageNotification_Level == 'required' %>error<% else %>info<% end_if %>"<% if $InPageNotification_Content == '' %> style="display: none"<% end_if %>>

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
