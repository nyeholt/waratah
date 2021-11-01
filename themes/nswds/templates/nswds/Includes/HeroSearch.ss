<div class="nsw-section--image"<% if $HeroSearch_Image %> style="background-image: url({$HeroSearch_Image.FocusFillMax(1920,640).URL});"<% end_if %>>

    <div class="hero-search">

        <div class="nsw-container">

            <div class="hero-search__content>

                <% include NSWDPC/Waratah/ElementTitle HeadingLevel=$HeroSearch_HeadingLevel, ShowTitle=$HeroSearch_ShowTitle, Title=$HeroSearch_Title %>

                <% if $HeroSearch_Subtitle %>
                <p>{$HeroSearch_Subtitle.XML}</p>
                <% end_if %>

                <% if $HeroSearch_Form %>
                    <% with $HeroSearch_Form %>
                        <form role="search" class="hero-search__form" $FormAttributes>
                            <div class="nsw-form-search">
                                <label for="{$FormName}_Search" class="sr-only"><%t nswds.SEARCH_SITE_FOR 'Search site for' %>:</label>
                                <input autocomplete="off" id="{$FormName}_Search" name="<% if $SearchFieldName %>{$SearchFieldName.XML}<% else %><%t nswds.SEARCH 'Search' %><% end_if %>" type="text" class="nsw-form-search__input" placeholder="<%t nswds.SEARCH_SITE_FOR 'Search site for' %>" value="{$SearchQuery.XML}" aria-label="<%t nswds.SEARCH 'Search' %>" aria-describedby="{$FormName}_action_results">

                                <button class="nsw-form-search__submit" type="submit" aria-label="search">
                                    <% include nswds/Icon Icon_Icon='search' %>
                                    <span class="sr-only"><%t nswds.SEARCH 'Search' %></span>
                                </button>

                            </div>
                        </form>
                    <% end_with %>
                <% end_if %>

                <% if $HeroSearch_Links %>
                    <div class="hero-search__suggested">
                        <ul>
                            <% loop $HeroSearch_Links.Sort('SortOrder') %>
                                <li><a href="{$LinkURL}">{$Title.XML}</a></li>
                            <% end_loop %>
                        </ul>
                    </div>
                <% else_if $HeroSearch_ShowTerms && $HeroSearch_SearchPage %>
                    <% if $HeroSearch_SearchPage.Suggestions.filter('Approved', 1) %>
                        <div class="hero-search__suggested">
                            <ul>
                                <% loop $HeroSearch_SearchPage.Suggestions.filter('Approved', 1) %>
                                    <%-- scope=ExtensibleSearchSuggestion --%>
                                    <li><a href="{$ExtensibleSearchPage.Link('getSearchForm/?Search={$Term.RAWURLATT}')}">{$Term.XML}</a></li>
                                <% end_loop %>
                            </ul>
                        </div>
                    <% end_if %>
                <% end_if %>
            </div>
        </div>
    </div>
</div>
