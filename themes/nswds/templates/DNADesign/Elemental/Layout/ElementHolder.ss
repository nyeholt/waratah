<section class="nsw-block<% if $StyleVariant %> $StyleVariant<% end_if %><% if $ExtraClass %> $ExtraClass<% end_if %> $SimpleClassName.LowerCase" id="$Anchor">
    <div<% if $Element.AddBackground %> class="nsw-section--light-10<% else %>nsw-section--white<% end_if %>">
        <% if $Element.AddContainer %><div class="nsw-container"><% end_if %>
    	    $Element
        <% if $Element.AddContainer %></div><% end_if %>
    </div>
</section>


