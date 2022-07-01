<% if $SelectedTerms %>
    <% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>
    <div class="nsw-block" itemscope itemtype="https://schema.org/DefinedTermSet" id="{$Anchor}-definedtermset">
        <% if $ShowTypeName %>
            <h3 itemprop="name">{$TaxonomyType.Name.XML}</h3>
        <% else %>
            <meta itemprop="name" content="{$TaxonomyType.Name.XML}">
        <% end_if %>
        <div class="nsw-block">
            <div class="nsw-list">
            <% loop $SelectedTerms %>
                <% include TaxonomyListItem DefinedTermSet=$Up.DefinedTermSet %>
            <% end_loop %>
            </div>
        </div>
    </div>
</div>
<% end_if %>
