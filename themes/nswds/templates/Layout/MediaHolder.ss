<div class="nsw-container nsw-p-top-sm nsw-p-bottom-lg">
    <div class="nsw-page-layout">
        <% if $IsLandingPage %>
            <% include PageContent %>
        <% else %>
            <% if $Menu(2) %>
                <% include Sidebar %>
            <% end_if %>
            <main id="main-content" class="nsw-page-layout__main">
                <article>
                    <div class="nsw-block">
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
                    <% if $PaginatedChildren %>
                        <section>
                            <div class="nsw-grid">
                                <% loop $PaginatedChildren %>
                                    <div class="nsw-col nsw-col-md-6">
                                        <div class="nsw-card nsw-card--content">
                                            <div class="nsw-card__content">
                                                <h2 class="nsw-card__title">
                                                    <a href="{$Link}" class="nsw-card__link" title="More information about $Title">{$MenuTitle.XML}</a>
                                                </h2>
                                                <% if $Tags %>
                                                    <% loop $Tags %>
                                                        <% if First %>
                                                            <p class="nsw-card__tag">{$Title.XML}</p>
                                                        <% end_if %>
                                                    <% end_loop %>
                                                <% end_if %>
                                                <p class="nsw-card__date">
                                                    <time datetime="{$Date}">{$Date.Full}</time>
                                                </p>
                                                <% if $Abstract %>
                                                    <p class="nsw-card__copy">{$Abstract.XML}</p>
                                                <% end_if %>
                                                <i class="material-icons nsw-material-icons nsw-card__icon" focusable="false" aria-hidden="true">east</i>
                                            </div>
                                        </div>
                                    </div>
                                <% end_loop %>
                            </div>
                            <% include Pagination PaginatedItems=$PaginatedChildren %>
                        </section>
                    <% end_if %>
                </article>
                <% include PageForm %>
            </main>
        <% end_if %>
    </div>
</div>
