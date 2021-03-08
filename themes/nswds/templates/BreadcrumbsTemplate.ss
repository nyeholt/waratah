<% if $Pages %>
    <li class="nsw-breadcrumb__item">
        <a href="$BaseHref" class="nsw-breadcrumb__link">Home</a>
    </li>
    <% loop $Pages %>
        <li class="nsw-breadcrumb__item">
        <% if $Last %>
            <a href="{$BreadcrumbLink}" class="nsw-breadcrumb__link nsw-breadcrumb--current" aria-current="page">{$MenuTitle}</a>
        <% else %>
            <a href="{$BreadcrumbLink}" class="nsw-breadcrumb__link">{$MenuTitle}</a>
        <% end_if %>
        </li>
    <% end_loop %>
<% end_if %>
