<div class="nsw-notification nsw-notification--<% if $Level %>{$Level}<% else %>info<% end_if %>">
  <% if $Icon %>
    <i class="material-icons nsw-material-icons nsw-notification__icon" focusable="false" aria-hidden="true">{$Icon}</i>
  <% end_if %>
  <div class="nsw-notification__content">
    <% if $MessageTitle %>
        <h4 class="nsw-notification__title">{$MessageTitle}</h4>
    <% end_if %>
    <% if $Message %>
        <p>{$Message}</p>
    <% end_if %>
  </div>
</div>
