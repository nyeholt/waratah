<% if $PaginatedChildren %>
<% if $CurrentPage.IsLandingPage %>
    <div class="nsw-container">
<% end_if %>

    <section>
        <% if $MediaType.Title == "Publication" %>
        <ul class="search-results">
            <% loop $PaginatedChildren(12,"Title","ASC") %>
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
                    <div class="nsw-card nsw-card--highlight<% if $Up.Brand %> nsw-card--{$Up.Brand.XML}<% end_if %>">
                        <% if $Image %>
                            <div class="nsw-card__image">
                                <img src="{$Image.FocusFillMax(400,200).URL}" alt="{$Image.AltText.XML}">
                            </div>
                        <% end_if %>
                        <div class="nsw-card__content">
                            <% if $MediaAttributes %>
                                <% loop $MediaAttributes %>
                                    <% if $Join.Content %>
                                        <div class="nsw-card__tag">{$Join.Content}</div>
                                    <% end_if %>
                                <% end_loop %>
                            <% end_if %>
                            <div class="nsw-card__date">
                                <time datetime="{$Date}">{$Date.Full}</time>
                            </div>
                            <% if $Tags %>
                                <% loop $Tags.Limit(3) %>
                                    <div class="nsw-card__tag">{$Title.XML}</div>
                                <% end_loop %>
                            <% end_if %>
                            <div class="nsw-card__title">
                                <a href="{$Link}" title="More information about {$Title.XML}">{$MenuTitle.XML}</a>
                            </div>
                            <% if $Abstract %>
                                <div class="nsw-card__copy">{$Abstract.XML}</div>
                            <% end_if %>
                            <% include nswds/Icon Icon_Icon='east' %>
                        </div>
                    </div>
                </div>
            <% end_loop %>
        </div>
        <% end_if %>
        <% include nswds/Pagination Pagination_PaginatedItems=$PaginatedChildren(12), SummaryLimit=4 %>
    </section>

<% if $CurrentPage.IsLandingPage %>
</div>
<% end_if %>
<% end_if %>
