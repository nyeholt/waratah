<li class="<% if $Tab_Selected != '' %> is-selected<% else_if $Tab_Pos == 1 %> is-selected<% end_if %>">
  <a href="#tabcontent-<% if $Tab_URLSegment %>{$Tab_URLSegment.ATT}<% else %>{$Tab_Pos}<% end_if %>" id="tab-for-{$Tab_URLSegment.ATT}">{$Tab_Title.XML}</a>
</li>
