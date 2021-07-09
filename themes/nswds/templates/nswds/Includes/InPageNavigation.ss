<nav class="nsw-page-nav" aria-labelledby="in-page-nav">
    <h2 id="in-page-nav" class="nsw-page-nav__title"><%t nswds.ON_THIS_PAGE 'On this page' %></h2>
    <ul class="nsw-page-nav__list">
        <% loop $ElementNav %>
            <li class="nsw-page-nav__list-item">
                <a href="{$Top.Link}#$Anchor" class="nsw-page-nav__link">{$Title.XML}</a>
            </li>
        <% end_loop %>
    </ul>
</nav>
