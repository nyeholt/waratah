<% if $supportsElemental && $ElementalArea && $ElementalArea.Elements.count > 0 %>
    {$ElementalArea}
<% else_if $Content %>
    <% if $Top.IsLandingPage %>
    <div class="nsw-container nsw-p-bottom-lg">
        {$Content}
    </div>
    <% else %>
    <div class="nsw-p-bottom-lg">
        {$Content}
    </div>
    <% end_if %>
<% end_if %>
<% include NSWDPC/Waratah/LastUpdated %>
