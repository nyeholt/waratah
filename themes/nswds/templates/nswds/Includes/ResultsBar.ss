<div class="nsw-results-bar">
<% if $Total == 0 %>

    <div class="nsw-results-bar__info">
        <%t nswds.NO_RESULTS 'Sorry, no {result_type} found for your search' result_type=$ResultType %>
    </div>

<% else %>

      <div class="nsw-results-bar__info">
        <% if $Total == 1 %>
            <%t nswds.RESULTS_BAR_ONE_RESULT 'Showing one {result_type_singular}' result_type_singular=$ResultTypeSingular %>
        <% else_if $TotalItems == $Total %>
            <%t nswds.RESULTS_BAR_ALL_ITEMS 'Showing all {total} {result_type}' total=$Total result_type=$ResultType %>
        <% else %>
            <%t nswds.RESULTS_BAR 'Showing {start} - {end} of {total} {result_type}' start=$Start end=$End total=$Total result_type=$ResultType %>
        <% end_if %>
      </div>

    <% if $SortingField %>
    <div class="nsw-results-bar__sorting">
        {$SortingField}
    </div>
    <% end_if %>

<% end_if %>
</div>
