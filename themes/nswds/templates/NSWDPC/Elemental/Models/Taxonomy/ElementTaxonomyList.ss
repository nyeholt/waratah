<% if $SelectedTerms %>
    <% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>
    <div itemscope itemtype="https://schema.org/DefinedTermSet" id="{$Anchor}-definedtermset">
        <% if $ShowTypename %>
            <h3 itemprop="name">>{$TaxonomyType.Name}</h3>
        <% end_if %>
        <div class="nsw-tags">
        <% loop $SelectedTerms %>
            <% include TaxonomyListItem DefinedTermSet=$Up.DefinedTermSet %>
        <% end_loop %>
        </div>
    </div>
</div>
<% end_if %>
