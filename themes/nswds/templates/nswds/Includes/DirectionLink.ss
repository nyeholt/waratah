<% if $DirectionLink_Direction=='back' %>
<a class="nsw-direction-link nsw-direction-link--icon-left<% if $DirectionLink_IsDisabled %>  is-disabled<% end_if %>" href="{$DirectionLink_URL.XML}">
  <% include nswds/Icon Icon_Icon='west' %>
  <span class="nsw-direction-link__text">
    <%t nswds.BACK 'Back' %> <span class="sr-only"><%t nswds.A_PAGE 'a page' %></span>
  </span>
</a>
<% else_if $DirectionLink_Direction=='bottom' %>
<a class="nsw-direction-link<% if $DirectionLink_IsDisabled %>  is-disabled<% end_if %>" href="{$DirectionLink_URL.XML}">
  <span class="nsw-direction-link__text">
    <%t nswds.BOTTOM 'Bottom' %> <span class="sr-only"><%t nswds.OF_PAGE 'of page' %></span>
  </span>
  <% include nswds/Icon Icon_Icon='south' %>
</a>
<% else_if $DirectionLink_Direction=='top' %>
<a class="nsw-direction-link<% if $DirectionLink_IsDisabled %>  is-disabled<% end_if %>" href="{$DirectionLink_URL.XML}">
  <span class="nsw-direction-link__text">
    <%t nswds.TOP 'Top' %> <span class="sr-only"><%t nswds.OF_PAGE 'of page' %></span>
  </span>
  <% include nswds/Icon Icon_Icon='north' %>
</a>
<% else_if $DirectionLink_Direction=='next' %>
<a class="nsw-direction-link<% if $DirectionLink_IsDisabled %>  is-disabled<% end_if %>" href="{$DirectionLink_URL.XML}">
  <span class="nsw-direction-link__text">
    <%t nswds.NEXT 'Next' %> <span class="sr-only"><%t nswds.PAGE 'page' %></span>
  </span>
  <% include nswds/Icon Icon_Icon='east' %>
</a>
<% end_if %>
