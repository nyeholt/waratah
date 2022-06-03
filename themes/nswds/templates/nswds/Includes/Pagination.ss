<% if $Pagination_PaginatedItems %>

    <% if $Pagination_PaginatedItems.MoreThanOnePage %>

    <div class="nsw-block">

        <nav class="nsw-pagination" aria-label="<%t nswds.PAGINATION 'Pagination' %>">

            <ul>

                <% if $Pagination_PaginatedItems.NotFirstPage %>
                    <li>
                        <a class="nsw-icon-button" href="{$Pagination_PaginatedItems.PrevLink}">
                            <% include nswds/Icon Icon_Icon='keyboard_arrow_left' %>
                            <span class="sr-only"><%t nswds.BACK 'Back' %></span>
                        </a>
                    </li>
                <% end_if %>

                <% loop $Pagination_PaginatedItems.PaginationSummary() %>

                    <% if $CurrentBool %>

                        <li>
                            <a class="active" href="{$Link.XML}" aria-current="page"><span class="sr-only"><%t nswds.PAGE 'Page' %> </span>{$PageNum}
                            </a>
                        </li>

                    <% else %>

                        <li>
                        <% if $Link %>
                            <a href="{$Link.XML}"><span class="sr-only"><%t nswds.PAGE 'Page' %> </span>{$PageNum}</a>
                        <% else %>
                            <span>…</span>
                        <% end_if %>
                        </li>
                    <% end_if %>

                <% end_loop %>

                <% if $Pagination_PaginatedItems.NotLastPage %>
                    <li>
                        <a class="nsw-icon-button" href="{$Pagination_PaginatedItems.NextLink}">
                        <% include nswds/Icon Icon_Icon='keyboard_arrow_right' %>
                        <span class="sr-only"><%t nswds.NEXT 'Next' %></span>
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
