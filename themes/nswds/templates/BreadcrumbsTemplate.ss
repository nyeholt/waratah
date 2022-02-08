<%-- this template is generated as  the global template variable $Breadcrumbs, and included in nswds/Breadcrumbs --%>
<% if $Pages %>
<ol class="nsw-breadcrumb__list" itemscope itemtype="https://schema.org/BreadcrumbList">
    <li class="nsw-breadcrumb__item" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
        <a itemprop="item" href="<% if $Breadcrumbs_HomeLink %>{$Breadcrumbs_HomeLink}<% else %>/<% end_if %>" class="nsw-breadcrumb__link"><span itemprop="name"><%t nswds.HOME 'Home' %></span></a>
        <meta itemprop="position" content="1" />
    </li>
    <% loop $Pages %>
        <li class="nsw-breadcrumb__item" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
        <% if $Last %>
            <a itemprop="item" href="{$BreadcrumbLink}" class="nsw-breadcrumb__link nsw-breadcrumb--current" aria-current="page"><span itemprop="name">{$MenuTitle}</span></a>
        <% else %>
            <a itemprop="item" href="{$BreadcrumbLink}" class="nsw-breadcrumb__link"><span itemprop="name">{$MenuTitle}</span></a>
        <% end_if %>
        <meta itemprop="position" content="{$Pos(2)}" />
        </li>
    <% end_loop %>
</ol>
<% else %>
<!-- no breadcrumbs found -->
<% end_if %>
