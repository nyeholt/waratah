<header class="nsw-header">
  <div class="nsw-header__container">
    <div class="nsw-header__wrapper">
      <div class="nsw-header__center">
        <a href="{$BaseHref}" class="nsw-header__logo-link">
            <% with SiteConfig %>
                <% if $LogoSVG %>
                    <img class="nsw-header__logo" src="{$LogoSVG.URL}" alt="{$Title.XML}">
                <% else_if $LogoImage %>
                    <img class="nsw-header__logo" src="{$LogoImage.URL}" alt="{$Title.XML}">
                <% else %>
                    <%-- TODO: use resourceURL --%>
                    <img class="nsw-header__logo" src="_resources/vendor/nswdpc/waratah/themes/nswds/app/static/img/nsw-waratah.svg" alt="{$Title.XML}">
                <% end_if %>
                <span class="sr-only">{$Title.XML}</span>
            <% end_with %>
        </a>
      </div>
      <div class="nsw-header__left">
        <button type="button" class="nsw-header-btn nsw-header-btn--menu js-open-navigation" aria-expanded="false"
          aria-controls="main-navigation">
          <i class="material-icons nsw-material-icons nsw-header-btn__icon" focusable="false" aria-hidden="true">menu</i>
          <span class="nsw-header-btn__sub"><span class="sr-only">Open</span> Menu</span>
        </button>
      </div>
      <% if $SearchForm %>
      <div class="nsw-header__right">
        <% if $SearchForm %>
        <button type="button" class="nsw-header-btn nsw-header-btn--search js-open-search" aria-expanded="false"
          aria-controls="header-search">
          <i class="material-icons nsw-material-icons nsw-header-btn__icon" focusable="false" aria-hidden="true">search</i>
          <span class="nsw-header-btn__sub"><span class="sr-only">Show</span> Search</span>
        </button>
        <% end_if %>
      </div>
      <% end_if %>
    </div>
    <% if $SearchForm %>
        <div class="nsw-search">
          <div id="header-search" class="nsw-search__area js-search-area" hidden>
            <% with $SearchForm %>
                <form role="search" $FormAttributes>
                    <label for="{$FormName}_Search" class="sr-only">Search site for:</label>
                    <input id="{$FormName}_Search" name="Search" type="text" class="nsw-search__input js-search-input" placeholder="Enter keywords" value="$SearchQuery" aria-label="Search" aria-describedby="{$FormName}_action_results">
                    <button class="nsw-search__submit" type="submit" aria-label="search">
                        <i class="material-icons nsw-material-icons nsw-search__search-icon" focusable="false" aria-hidden="true">search</i>
                    </button>
                </form>
            <% end_with %>
            <button class="nsw-search__close-btn js-close-search" aria-expanded="true" aria-controls="header-search">
              <i class="material-icons nsw-material-icons nsw-search__close-icon" focusable="false" aria-hidden="true">close</i>
              <span class="sr-only">Close search</span>
            </button>
          </div>
        </div>
    <% end_if %>
  </div>
</header>
