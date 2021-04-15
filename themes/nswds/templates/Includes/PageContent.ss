<main id="main-content" class="nsw-page-layout__main">
    <article>
        <div class="nsw-block">
            <h1>$Title.XML</h1>
            <% if $Abstract && $ShowAbstractOnPage %>
                <p class="nsw-intro">
                    $Abstract
                </p>
            <% end_if %>
            <% if $Date %>
                <p>
                    <time datetime="{$Date}">{$Date.Full}</time>
                </p>
            <% end_if %>
            <% if $MediaAttributes %>
                <div class="attributes">
                    <% loop $MediaAttributes %>
                        <% if $Join.Content %>
                            <p><strong>{$Join.Content}</strong></p>
                        <% end_if %>
                    <% end_loop %>
                </div>
            <% end_if %>
            <% if $MediaAttributes || $Tags %>
                <hr>
            <% end_if %>
            <% if $Tags %>
                <div class="tags nsw-m-bottom-md">
                    <% loop $Tags %>
                        <a href="{$Up.getParent.Link}?tag={$Title.URLATT}" class="nsw-tag">{$Title}</a>
                    <% end_loop %>
                </div>
            <% end_if %>
        </div>
        <% include PageElemental %>
        <% include MediaHolderChildren %>
    </article>
    <% include PageForm %>
</main>


