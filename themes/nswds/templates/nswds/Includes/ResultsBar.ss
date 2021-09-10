<div class="nsw-results-bar">
<% if $ResultsBar_Total == 0 %>

    <div class="nsw-results-bar__info">
        <%t nswds.NO_RESULTS 'Sorry, no {result_type} found for your search' result_type=$ResultsBar_ResultType %>
    </div>

<% else %>

    <div class="nsw-results-bar__info">
    <% if $ResultsBar_Total == 1 %>
        <%t nswds.RESULTS_BAR_ONE_RESULT 'Showing one {result_type_singular}' result_type_singular=$ResultsBar_ResultTypeSingular %>
    <% else_if $ResultsBar_TotalItems == $ResultsBar_Total %>
        <%t nswds.RESULTS_BAR_ALL_ITEMS 'Showing all {total} {result_type}' total=$ResultsBar_Total result_type=$ResultsBar_ResultType %>
    <% else %>
        <%t nswds.RESULTS_BAR 'Showing {start} - {end} of {total} {result_type}' start=$ResultsBar_Start end=$ResultsBar_End total=$ResultsBar_Total result_type=$ResultsBar_ResultType %>
    <% end_if %>
    </div>

    <% if $ResultsBar_SortingField %>
    <div class="nsw-results-bar__sorting">
        {$ResultsBar_SortingField}
    </div>
    <% end_if %>

<% end_if %>
</div>
