<div class="nsw-section--image"<% if $Image %> style="background-image: url({$Image.FocusFillMax(1920,640).URL});"<% end_if %>>

    <div class="hero-search">

        <div class="nsw-container">

            <div class="hero-search__content>

                <% if $ShowTitle && $Title %>
                    <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %> class="hero-search__title">
                        {$Title}
                    </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
                <% end_if %>

                <% if $Subtitle %>
                <p>{$Subtitle.XML}</p>
                <% end_if %>

                <% if $ElementSearchForm %>
                    <% with $ElementSearchForm %>
                        <form role="search" class="hero-search__form" $FormAttributes>
                            <div class="nsw-form-search">
                                <label for="{$FormName}_Search" class="sr-only"><%t nswds.SEARCH_SITE_FOR 'Search site for' %>:</label>
                                <input autocomplete="off" id="{$FormName}_Search" name="<% if $SearchFieldName %>{$SearchFieldName.XML}<% else %>Search<% end_if %>" type="text" class="nsw-form-search__input" placeholder="<%t nswds.SEARCH_SITE_FOR 'Search site for' %>" value="{$SearchQuery.XML}" aria-label="Search" aria-describedby="{$FormName}_action_results">

                                <button class="nsw-form-search__submit" type="submit" aria-label="search">
                                    <% include nswds/Icon Icon='search' %>
                                    <span class="sr-only">Search</span>
                                </button>

                            </div>
                        </form>
                    <% end_with %>
                <% end_if %>

                <% if $SearchLinks %>
                    <div class="hero-search__suggested">
                        <ul>
                            <% loop $SearchLinks.Sort('SortOrder') %>
                                <li><a href="{$LinkURL.URL}">{$Title.XML}</a></li>
                            <% end_loop %>
                        </ul>
                    </div>
                <% else_if $ShowTerms && $SearchPage %>
                    <% if $SearchPage.Suggestions.filter('Approved', 1) %>
                        <div class="hero-search__suggested">
                            <ul>
                                <% loop $SearchPage.Suggestions.filter('Approved', 1) %>
                                    <%-- scope=ExtensibleSearchSuggestion --%>
                                    <li><a href="{$ExtensibleSearchPage.Link('getSearchForm/?Search={$Term}')}">{$Term.XML}</a></li>
                                <% end_loop %>
                            </ul>
                        </div>
                    <% end_if %>
                <% end_if %>
            </div>
        </div>
    </div>
</div>
