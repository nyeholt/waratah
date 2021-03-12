<main id="main-content" class="nsw-page-layout__main">
    <article>
        <div class="nsw-wysiwyg-content nsw-block">
            <h1>$Title.XML</h1>
            <% if $Date %>
                <p>
                    {$Date.Full}
                </p>
            <% end_if %>
            <% if $Abstract %>
                <p class="nsw-intro">
                    $Abstract
                </p>
            <% end_if %>
        </div>
        <% include PageElemental %>
    </article>
    <% include PageForm %>
</main>
