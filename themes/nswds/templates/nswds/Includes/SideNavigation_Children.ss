<% if LinkOrSection = section %>
<% if $SideNavigation_Children %>
<ul class="nsw-sidenav__list<% if $SideNavigation_PageLevel %> nsw-sidenav__list--level-{$SideNavigation_PageLevel}<% end_if %>">
    <% loop $SideNavigation_Children %>
    <li class="nsw-sidenav__list-item<% if $Children %> has-active-children<% end_if %>">
        <a href="{$Link}" class="nsw-sidenav__link<% if $IsCurrent %> is-current<% end_if %>"<% if $IsCurrent %> aria-current="page"<% end_if %>>
        <% if $MenuTitle %>{$MenuTitle.XML}<% else %>{$Title.XML}<% end_if %>
        </a>
        <% include nswds/SideNavigation_Children SideNavigation_Children=$Children, SideNavigation_PageLevel=$PageLevel %>
    </li>
    <% end_loop %>
</ul>
<% end_if %>
<% end_if %>



