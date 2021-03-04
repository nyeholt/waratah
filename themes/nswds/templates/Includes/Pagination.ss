<% if $PaginatedItems.MoreThanOnePage %>
    <div class="nsw-container">
        <nav aria-label="Pagination">
            <ul class="nsw-pagination">
                <li class="nsw-pagination__item nsw-pagination__item--prev-page">
                    <% if $PaginatedItems.PrevLink %>
                        <a class="nsw-direction-link" href="{$PaginatedItems.PrevLink}">
                    <% else %>
                        <span class="nsw-direction-link nsw-direction-link--disabled nsw-direction-link--icon-left">
                    <% end_if %>
                    <svg class="nsw-icon" focusable="false" aria-hidden="true">
                        <use xlink:href="#arrow-left"></use>
                    </svg>
                    <span class="nsw-direction-link__text">
                        Back <span class="sr-only">a page</span>
                    </span>
                    <% if $PaginatedItems.PrevLink %>
                        </a>
                    <% else %>
                        </span>
                    <% end_if %>
                </li>
                <% loop $PaginatedItems.PaginationSummary(4) %>
                    <li class="nsw-pagination__item<% if $CurrentBool %> nsw-pagination__item--is-active<% end_if %>">
                        <% if $Link %>
                            <a class="nsw-pagination__link<% if $CurrentBool %> is-current<% end_if %>" href="{$Link}"<% if $CurrentBool %> aria-current="page"<% end_if %>>
                            <span class="nsw-pagination__text">
                                <span class="sr-only">Page </span>{$PageNum}
                            </span>
                            </a>
                        <% else %>
                            <span class="nsw-pagination__link">
                                <span class="nsw-pagination__text">
                                    &hellip;
                                </span>
                            </span>
                        <% end_if %>
                    </li>
                <% end_loop %>
                <li class="nsw-pagination__item nsw-pagination__item--next-page">
                    <% if $PaginatedItems.NextLink %>
                        <a class="nsw-direction-link" href="{$PaginatedItems.NextLink}">
                    <% else %>
                        <span class="nsw-direction-link nsw-direction-link--disabled nsw-direction-link--icon-left">
                    <% end_if %>
                    <span class="nsw-direction-link__text">
                        Next <span class="sr-only">page</span>
                    </span>
                    <svg class="nsw-icon" focusable="false" aria-hidden="true">
                        <use xlink:href="#arrow-right"></use>
                    </svg>
                    <% if $PaginatedItems.NextLink %>
                        </a>
                    <% else %>
                        </span>
                    <% end_if %>
                </li>
            </ul>
        </nav>
    </div>
<% end_if %>
