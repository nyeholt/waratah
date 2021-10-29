<% if $supportsElemental && $ElementalArea && $ElementalArea.Elements.count > 0 %>
    {$ElementalArea}
<% else %>
    <div class="nsw-container">
        {$Content}
    </div>
<% end_if %>
