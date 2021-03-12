<% if $ElementNav %>
    <% include PageNagivation %>
<% end_if %>
<% if $supportsElemental && $ElementalArea %>
    {$ElementalArea}
<% else %>
    <div class="nsw-container">
        {$Content}
    </div>
<% end_if %>
