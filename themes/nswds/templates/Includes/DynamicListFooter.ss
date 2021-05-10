<footer class="nsw-footer">
<div class="nsw-footer__lower">
  <div class="nsw-container">
    <p>We pay respect to the Traditional Custodians and First Peoples of NSW, and acknowledge their continued connection to their country and culture.</p>
    <hr>
      <% if $DynamicListForTemplate('SmallFooter') %>
      <% with $DynamicListForTemplate('SmallFooter') %>
      <% if $Items %>
          <nav role="navigation" aria-labelledby="block-data-menu" class="clearfix menu--data">
              <ul class="clearfix nsw-footer-links">
                  <% loop $Items %>
                      <li class="nsw-footer-links__item">
                          <% if $Link %><% with $Link %><a href="$LinkURL"{$TargetAttr}><% end_with %><% end_if %>$Title<% if $Link %></a><% end_if %>
                      </li>
                  <% end_loop %>
              </ul>
          </nav>
      <% end_if %>
      <% end_with %>
      <% end_if %>
    <p>Copyright © $Year</p>
  </div>
</div>
</footer>
