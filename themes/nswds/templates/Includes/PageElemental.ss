<% if $ElementNav %>
    <% include PageNagivation %>
<% end_if %>
<% if $supportsElemental && $ElementalArea %>
    {$ElementalArea}
<% else %>
    <div class="nsw-container">
        <div class="nsw-grid">
            <div class="col-lg-12">
                {$Content}
            </div>
        </div>
    </div>
<% end_if %>
