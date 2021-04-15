<% if $PaginatedChildren %>
    <section>
        <div class="nsw-grid">
            <% loop $PaginatedChildren(12) %>
                <div class="nsw-col nsw-col-sm-<% if $Up.IsLandingPage %>4<% else %>6<% end_if %>">
                    <div class="nsw-card nsw-card--content">
                        <div class="nsw-card__content">
                            <h2 class="nsw-card__title">
                                <a href="{$Link}" class="nsw-card__link" title="More information about $Title">{$MenuTitle.XML}</a>
                            </h2>
                            <% if $MediaAttributes %>
                                <% loop $MediaAttributes %>
                                    <% if $Join.Content %>
                                        <p class="nsw-card__tag">{$Join.Content}</p>
                                    <% end_if %>
                                <% end_loop %>
                            <% end_if %>
                            <p class="nsw-card__date">
                                <time datetime="{$Date}">{$Date.Full}</time>
                            </p>
                            <% if $Tags %>
                                <p class="nsw-card__tag">
                                    <% loop $Tags.Limit(3) %>
                                        <span class="nsw-tag">{$Title.XML}</span>
                                    <% end_loop %>
                                </p>
                            <% end_if %>
                            <% if $Abstract %>
                                <p class="nsw-card__copy">{$Abstract.XML}</p>
                            <% end_if %>
                            <i class="material-icons nsw-material-icons nsw-card__icon" focusable="false" aria-hidden="true">east</i>
                        </div>
                        <% if $Image %>
                            <div class="nsw-card__image-area">
                                <img src="$Image.FocusFillMax(400,200).URL" alt="{$Image.Title.XML}" class="nsw-card__image">
                            </div>
                        <% end_if %>
                    </div>
                </div>
            <% end_loop %>
        </div>
        <% include Pagination PaginatedItems=$PaginatedChildren %>
    </section>
<% else %>
    <p class='no-media'>There is currently no media available.</p>
<% end_if %>
