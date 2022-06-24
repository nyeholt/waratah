<% if $InPageNavigation_Links %>
<nav class="nsw-in-page-nav" aria-labelledby="in-page-nav">
    <div id="in-page-nav" class="nsw-in-page-nav__title"><%t nswds.ON_THIS_PAGE 'On this page' %></div>
    <ul>
        <% loop $InPageNavigation_Links %>
            <li>
                <a href="{$Top.Link}#$Anchor">{$Title.XML}</a>
            </li>
        <% end_loop %>
    </ul>
</nav>
<% end_if %>
