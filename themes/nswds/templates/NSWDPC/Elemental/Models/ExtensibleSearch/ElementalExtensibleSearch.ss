<% if $ElementSearchForm %>

<section class="nsw-section--image"<% if $Image %> style="background-image: url({$Image.FocusFillMax(1920,640).URL});"<% end_if %>>

    <div class="hero-search">

        <div class="nsw-container">

            <div class="hero-search__content nsw-body-content">
                <% if $ShowTitle && $Title %>
                    <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %> class="hero-search__title">
                        {$Title}
                    </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
                <% end_if %>
                <% if $Subtitle %>
                <p>{$Subtitle.XML}</p>
                <% end_if %>

                <% with $ElementSearchForm %>
                    <form role="search" class="hero-search__form" $FormAttributes>
                        <div class="nsw-form-search">
                            <label for="{$FormName}_Search" class="sr-only">Search site for:</label>
                            <input autocomplete="off" id="{$FormName}_Search" name="Search" type="text" class="nsw-form-search__input" placeholder="Search site for" value="$SearchQuery" aria-label="Search" aria-describedby="{$FormName}_action_results">
                            <button class="nsw-form-search__submit" type="submit" aria-label="search">
                                <i class="material-icons nsw-material-icons" focusable="false" aria-hidden="true">search</i>
                                <span class="sr-only">Search</span>
                            </button>
                        </div>
                    </form>
                <% end_with %>

                <% if $SearchLinks %>
                    <div class="hero-search__suggested">
                        <ul>
                            <% loop $SearchLinks.Sort('SortOrder') %>
                                <li><a href="{$LinkURL}">{$Title.XML}</a></li>
                            <% end_loop %>
                        </ul>
                    </div>
                <% else_if $ShowTerms %>
                    <% if $SearchPage.Suggestions.filter('Approved', 1) %>
                        <div class="hero-search__suggested">
                            <ul>
                                <% loop $SearchPage.Suggestions.filter('Approved', 1) %>
                                    <li><a href="search/getSearchForm/?Search={$Term}">{$Term}</a></li>
                                <% end_loop %>
                            </ul>
                        </div>
                    <% end_if %>
                <% end_if %>

            </div>
            <%-- hero-search__content --%>

        </div>
        <%-- container --%>

    </div>

</section>
<% end_if %>
