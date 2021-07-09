<% if $Direction=='back' %>
<a class="nsw-direction-link nsw-direction-link--icon-left<% if $IsDisabled %>  is-disabled<% end_if %>" href="{$Link.XML}">
  <% include nswds/Icon Icon='west' %>
  <span class="nsw-direction-link__text">
    <%t nswds.BACK 'Back' %> <span class="sr-only"><%t nswds.A_PAGE 'a page' %></span>
  </span>
</a>
<% else_if $Direction=='bottom' %>
<a class="nsw-direction-link<% if $IsDisabled %>  is-disabled<% end_if %>" href="{$Link.XML}">
  <span class="nsw-direction-link__text">
    <%t nswds.BOTTOM 'Bottom' %> <span class="sr-only"><%t nswds.OF_PAGE 'of page' %></span>
  </span>
  <% include nswds/Icon Icon='south' %>
</a>
<% else_if $Direction=='top' %>
<a class="nsw-direction-link<% if $IsDisabled %>  is-disabled<% end_if %>" href="{$Link.XML}">
  <span class="nsw-direction-link__text">
    <%t nswds.TOP 'Top' %> <span class="sr-only"><%t nswds.OF_PAGE 'of page' %></span>
  </span>
  <% include nswds/Icon Icon='north' %>
</a>
<% else_if $Direction=='next' %>
<a class="nsw-direction-link<% if $IsDisabled %>  is-disabled<% end_if %>" href="{$Link.XML}">
  <span class="nsw-direction-link__text">
    <%t nswds.NEXT 'Next' %> <span class="sr-only"><%t nswds.PAGE 'page' %></span>
  </span>
  <% include nswds/Icon Icon='east' %>
</a>
<% end_if %>
