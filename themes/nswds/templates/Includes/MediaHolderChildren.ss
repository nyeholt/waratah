<% if $PaginatedChildren %>
<% if $CurrentPage.IsLandingPage %>
    <div class="nsw-container">
<% end_if %>

    <section>
        <% if $MediaType.Title == "Publication" %>
        <ul class="search-results">
            <% loop $PaginatedChildren(12) %>
                <li class="search-results-item">
                    <h4 class="item-title"><a href="$Link"><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %></a></h4>
                    <% include NSWDPC/Waratah/PageContentMetadata %>
                    <% if $MetaDescription %>
                        <p class="item-abstract">$MetaDescription.ContextSummary(350)</p>
                    <% else_if $Abstract %>
                        <p class="item-abstract">$Abstract.ContextSummary(350)</p>
                    <% else_if $ElementsForSearch %>
                        <p class="item-abstract">$ElementsForSearch.RAW.ContextSummary(350)</p>
                    <% end_if %>
                </li>
            <% end_loop %>
        </ul>
        <% else %>
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
                                <img src="$Image.FocusFillMax(400,200).URL" alt="{$Image.AltText.XML}" class="nsw-card__image">
                            </div>
                        <% end_if %>
                    </div>
                </div>
            <% end_loop %>
        </div>
        <% end_if %>
        <% include nswds/Pagination Pagination_PaginatedItems=$PaginatedChildren %>
    </section>

<% if $CurrentPage.IsLandingPage %>
</div>
<% end_if %>
<% end_if %>
