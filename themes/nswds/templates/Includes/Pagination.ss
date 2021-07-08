<% if $PaginatedItems.MoreThanOnePage %>

    <div class="nsw-container">

        <nav aria-label="Pagination">

            <ul class="nsw-pagination">

                <% if $PaginatedItems.NotFirstPage %>
                    <li class="nsw-pagination__item nsw-pagination__item--prev-page">
                        <a class="nsw-direction-link nsw-direction-link--icon-left" href="$PaginatedItems.PrevLink">
                            <% include Icon Icon='west' %>
                            <span class="nsw-direction-link__text">
                                Back
                            </span>
                        </a>
                    </li>
                <% end_if %>

                <% loop $PaginatedItems.PaginationSummary($Limit) %>

                    <% if $CurrentBool %>

                        <li class="nsw-pagination__item nsw-pagination__item--is-active">
                            <a class="nsw-pagination__link is-current" href="$Link" aria-current="page">
                                <span class="nsw-pagination__text">
                                    <span class="sr-only">Page </span>$PageNum
                                </span>
                            </a>
                        </li>

                    <% else %>

                        <li class="nsw-pagination__item">
                        <% if $Link %>
                            <a class="nsw-pagination__link" href="$Link">
                                <span class="nsw-pagination__text">
                                    <span class="sr-only">Page </span>$PageNum
                                </span>
                            </a>
                        <% else %>
                            <span class="nsw-pagination__text">
                                &hellip;
                                <span class="sr-only">intermediate pages</span>
                            </span>
                        <% end_if %>
                        </li>
                    <% end_if %>

                <% end_loop %>

                <% if $PaginatedItems.NotLastPage %>
                    <li class="nsw-pagination__item nsw-pagination__item--next-page">
                        <a class="nsw-direction-link" href="$PaginatedItems.NextLink">
                        <span class="nsw-direction-link__text">
                            Next
                        </span>
                        <% include Icon Icon='east' %>
                        </a>
                    </li>
                <% end_if %>

            </ul>

        </nav>

    </div>

<% end_if %>
