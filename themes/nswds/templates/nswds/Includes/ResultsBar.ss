<div class="nsw-results-bar">
<% if $Total == 0 %>

    <div class="nsw-results-bar__info">
        <%t nswds.NO_RESULTS 'Sorry, no results found for your search' %>
    </div>

<% else %>

    <div class="nsw-results-bar">
      <div class="nsw-results-bar__info">
        <%t nswds.RESULTS_BAR 'Showing results {start} - {end} of {total} results' start=$Start end=$End total=$Total %>
      </div>
    </div>

    <% if $SortingField %>
    <div class="nsw-results-bar__sorting">
        {$SortingField}
    </div>
    <% end_if %>

<% end_if %>
</div>
