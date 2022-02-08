<li class="nsw-tabs__list-item<% if $Tab_Selected != '' %> is-selected<% else_if $Tab_Pos == 1 %> is-selected<% end_if %>">
  <a href="#tabcontent-<% if $Tab_URLSegment %>{$Tab_URLSegment.ATT}<% else %>{$Tab_Pos}<% end_if %>" id="tab-for-{$Tab_URLSegment.ATT}" class="nsw-tabs__link">{$Tab_Title.XML}</a>
</li>
