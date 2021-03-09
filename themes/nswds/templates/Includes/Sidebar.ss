<aside class="nsw-col nsw-col--third sidebar-nav">
    <nav class="nsw-sidenav" aria-labelledby="{$URLSegment} side navigation">
        <% with $Level(1) %>
            <div class="nsw-sidenav__header">
                <h2 id="{$URLSegment}" class="nsw-sidenav__heading">
                <a href="$Link" class="nsw-sidenav__heading-link">{$MenuTitle.XML}</a></h2>
            </div>
            <ul class="nsw-sidenav__list nsw-sidenav__list--level-{$PageLevel} ">
                <% include SidebarNavigation %>
            </ul>
        <% end_with %>
	</nav>
</aside>
