<% if LinkOrSection = section %>
    <% loop $Children %>
        <li class="nsw-sidenav__list-item<% if $Children %> has-active-children<% end_if %>">
            <a href="{$Link}" class="nsw-sidenav__link<% if $isCurrent %> is-current<% end_if %>"<% if $isCurrent %> aria-current="page"<% end_if %>>
                {$MenuTitle.XML}
            </a>
            <% if $Children %>
                <ul class="nsw-sidenav__list nsw-sidenav__list--level-{$PageLevel}">
                    <% include SidebarNavigation %>
                </ul>
            <% end_if %>
        </li>
    <% end_loop %>
<% end_if %>
