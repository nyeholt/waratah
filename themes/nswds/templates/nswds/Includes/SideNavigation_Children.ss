<% if $Children %>
<ul class="nsw-sidenav__list<% if $PageLevel %> nsw-sidenav__list--level-{$PageLevel}<% end_if %>">
    <% loop $Children %>
    <li class="nsw-sidenav__list-item<% if $Children %> has-active-children<% end_if %>">
        <a href="{$Link}" class="nsw-sidenav__link<% if $IsCurrent %> is-current<% end_if %>"<% if $IsCurrent %> aria-current="page"<% end_if %>>
        <% if $MenuTitle %>{$MenuTitle.XML}<% else %>{$Title.XML}<% end_if %>
        </a>
        <% include nswds/SideNavigation_Children Children=$Children %>
    </li>
    <% end_loop %>
</ul>
<% end_if %>
