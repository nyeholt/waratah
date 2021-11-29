<span class="nsw-tag" itemscope itemtype="https://schema.org/DefinedTerm">
<% if $IconPath %>
    <img src="$IconPath">
<% else_if $TaxonomyIconCssClass %>
    <% include nswds/Icon Icon_Icon=$TaxonomyIconCssClass %>
<% end_if %>
    <span itemprop="name">{$Name.XML}</span>
<% if $Description %>
    - <span itemprop="description">{$Description}</span>
<% end_if %>
    <link itemprop="inDefinedTermSet" href="#{$DefinedTermSet}">
</span>
