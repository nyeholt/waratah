<h1>$Title.XML</h1>
<% if $Abstract %>
    <p class="nsw-intro">$Abstract.ContextSummary(150)</p>
<% end_if %>
<article>
    <% include PageElemental %>
</article>
<% if $Query && $Results %>
    <p class="searchQuery">Showing $Results.FirstItem &ndash; $Results.LastItem of $Results.TotalItems result<% if $Results.TotalItems != 1 %>s<% end_if %> for &quot;{$Query}&quot;</p>
<% end_if %>
<% if $Results %>
    <ul class="search-results">
        <% loop $Results %>
            <li class="search-results-item">
                <h4 class="item-title"><a href="$Link"><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %></a></h4>
                <p><small>$LastEdited.DayOfMonth(true) $LastEdited.Month $LastEdited.Year</small></p>
                <% if $MetaDescription %>
                    <p class="item-abstract">$MetaDescription.ContextSummary(150)</p>
                <% else_if $Abstract %>
                    <p class="item-abstract">$Abstract.ContextSummary(150)</p>
                <% else_if $ElementsForSearch %>
                    <p class="item-abstract">$ElementsForSearch.RAW.ContextSummary(150)</p>
                <% end_if %>
            </li>
        <% end_loop %>
    </ul>
<% else %>
    <p>Sorry, your search query did not return any results.</p>
<% end_if %>
<% include Pagination PaginatedItems=$Results %>
