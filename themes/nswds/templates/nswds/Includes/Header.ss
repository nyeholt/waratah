<header class="nsw-header">

    <div class="nsw-header__container">

        <div class="nsw-header__inner">

            <div class="nsw-header__main">
                <% include nswds/Waratah %>
            </div>

            <div class="nsw-header__menu">
                <button type="button" class="nsw-header-btn nsw-header-btn--menu js-open-navigation" aria-expanded="false" aria-controls="main-navigation">
                    <i class="material-icons nsw-material-icons nsw-header-btn__icon" focusable="false" aria-hidden="true">menu</i>
                    <span class="nsw-header-btn__sub"><span class="sr-only"><%t nswds.OPEN 'Open' %></span> <%t nswds.MENU 'Menu' %></span>
                </button>
            </div>

            <% if $SearchForm %>

            <div class="nsw-header__search">

                <% if $SearchForm %>
                <button type="button" class="nsw-header-btn nsw-header-btn--search js-open-search" aria-expanded="false" aria-controls="header-search">
                    <i class="material-icons nsw-material-icons nsw-header-btn__icon" focusable="false" aria-hidden="true">search</i>
                    <span class="nsw-header-btn__sub"><span class="sr-only"><%t nswds.SHOW 'Show' %></span> <%t nswds.SEARCH 'Search' %></span>
                </button>
                <% end_if %>

            </div>

            <% end_if %>

        </div>

        <% if $SearchForm %>
        <div class="nsw-search">

            <div id="header-search" class="nsw-search__area js-search-area" hidden>

                <% with $SearchForm %>
                <%-- TODO: SecurityID --%>
                <form role="search" $FormAttributes>
                    <label for="{$FormName}_Search" class="sr-only"><%t nswds.SEARCH_SITE_FOR 'Search site for:' %></label>
                    <input id="{$FormName}_Search" name="Search" type="text" class="nsw-search__input js-search-input" placeholder="Enter keywords" value="$SearchQuery" aria-label="Search" aria-describedby="{$FormName}_action_results">
                    <button class="nsw-search__submit" type="submit" aria-label="search">
                        <i class="material-icons nsw-material-icons nsw-search__search-icon" focusable="false" aria-hidden="true">search</i>
                    </button>
                </form>
                <% end_with %>

                <button class="nsw-search__close-btn js-close-search" aria-expanded="true" aria-controls="header-search">
                    <i class="material-icons nsw-material-icons nsw-search__close-icon" focusable="false" aria-hidden="true">close</i>
                    <span class="sr-only"><%t nswds.CLOSE_SEARCH 'Close search' %></span>
                </button>

            </div>

        </div>
        <% end_if %>

    </div>

</header>
