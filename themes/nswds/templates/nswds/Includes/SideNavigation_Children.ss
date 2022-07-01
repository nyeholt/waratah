<% if $LinkOrSection == 'section' %>
<% if $SideNavigation_Children %>
<ul>
    <% loop $SideNavigation_Children %>
    <li<% if $IsCurrent %> class="active"<% end_if %>>
        <a href="{$Link}"<% if $IsCurrent %> class="current" aria-current="page"<% end_if %>>
        <% if $MenuTitle %>{$MenuTitle.XML}<% else %>{$Title.XML}<% end_if %>
        </a>
        <% include nswds/SideNavigation_Children SideNavigation_Children=$Children, SideNavigation_PageLevel=$PageLevel %>
    </li>
    <% end_loop %>
</ul>
<% end_if %>
<% end_if %>
