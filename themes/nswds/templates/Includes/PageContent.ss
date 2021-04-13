<main id="main-content" class="nsw-page-layout__main">
    <article>
        <div class="nsw-block">
            <h1>$Title.XML</h1>
            <% if $Date %>
                <p>
                    <time datetime="{$Date}">{$Date.Full}</time>
                </p>
            <% end_if %>
            <% if $Abstract %>
                <p class="nsw-intro">
                    $Abstract
                </p>
            <% end_if %>
        </div>
        <% include PageElemental %>
        <% include MediaHolderChildren %>
    </article>
    <% include PageForm %>
</main>
