<% if $supportsElemental && $ElementalArea && $ElementalArea.Elements.count > 0 %>
    {$ElementalArea}
<% else_if $Content %>
    <% if $Top.IsLandingPage %>
    <div class="nsw-container">
        {$Content}
    </div>
    <% else %>
        {$Content}
    <% end_if %>
<% end_if %>
