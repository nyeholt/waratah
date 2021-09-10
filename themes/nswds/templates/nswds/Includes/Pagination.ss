<% if $Pagination_PaginatedItems %>

    <% if $Pagination_PaginatedItems.PaginatedItems.MoreThanOnePage %>

    <div class="nsw-container">

        <nav aria-label="Pagination">

            <ul class="nsw-pagination">

                <% if $Pagination_PaginatedItems.NotFirstPage %>
                    <li class="nsw-pagination__item nsw-pagination__item--prev-page">
                        <a class="nsw-direction-link nsw-direction-link--icon-left" href="$Pagination_PaginatedItems.PrevLink">
                            <% include nswds/Icon Icon_Icon='west' %>
                            <span class="nsw-direction-link__text">
                                <%t nswds.BACK 'Back' %>
                            </span>
                        </a>
                    </li>
                <% end_if %>

                <% loop $Pagination_PaginatedItems.PaginationSummary($Limit) %>

                    <% if $CurrentBool %>

                        <li class="nsw-pagination__item nsw-pagination__item--is-active">
                            <a class="nsw-pagination__link is-current" href="$Link" aria-current="page">
                                <span class="nsw-pagination__text">
                                    <span class="sr-only"><%t nswds.PAGE 'Page' %> </span>$PageNum
                                </span>
                            </a>
                        </li>

                    <% else %>

                        <li class="nsw-pagination__item">
                        <% if $Link %>
                            <a class="nsw-pagination__link" href="$Link">
                                <span class="nsw-pagination__text">
                                    <span class="sr-only"><%t nswds.PAGE 'Page' %> </span>$PageNum
                                </span>
                            </a>
                        <% else %>
                            <span class="nsw-pagination__text">
                                &hellip;
                                <span class="sr-only"><%t nswds.INTERMEDIATE_PAGES 'intermediate pages' %></span>
                            </span>
                        <% end_if %>
                        </li>
                    <% end_if %>

                <% end_loop %>

                <% if $Pagination_PaginatedItems.NotLastPage %>
                    <li class="nsw-pagination__item nsw-pagination__item--next-page">
                        <a class="nsw-direction-link" href="$Pagination_PaginatedItems.NextLink">
                        <span class="nsw-direction-link__text">
                            <%t nswds.NEXT 'Next' %>
                        </span>
                        <% include nswds/Icon Icon_Icon='east' %>
                        </a>
                    </li>
                <% end_if %>

            </ul>

        </nav>

    </div>

    <% end_if %>

<% else_if $PaginatedItems %>

    <%-- BC for non-scoped paginated items --%>
    <% include nswds/Pagination Pagination_PaginatedItems=$PaginatedItems %>

<% end_if %>
