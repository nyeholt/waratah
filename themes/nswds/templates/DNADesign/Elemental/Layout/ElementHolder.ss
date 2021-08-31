<section class="nsw-block<% if $StyleVariant %> $StyleVariant<% end_if %><% if $ExtraClass %> $ExtraClass<% end_if %> {$ElementShortName}" id="$Anchor">
    <% if $Element.AddBackground %><div class="nsw-section--light-10"><% end_if %>
        <% if $Element.AddContainer %><div class="nsw-container"><% end_if %>
    	    $Element
        <% if $Element.AddContainer %></div><% end_if %>
    <% if $Element.AddBackground %></div><% end_if %>
</section>
