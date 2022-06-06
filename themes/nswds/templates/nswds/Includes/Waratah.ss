<div class="nsw-header__waratah">
    <a href="<% if $AlternateHomeURL %>{$AlternateHomeURL.XML}<% else %>{$BaseHref}<% end_if %>">
        <% include nswds/Waratah_SVG %>
        <% if $Waratah_CoBrand %>
        <% include nswds/Waratah_CoBrand %>
        <% end_if %>
    </a>
</div>
<% if not $Waratah_CoBrand %>
    <div class="nsw-header__name">
        <% with SiteConfig %>
        <div class="nsw-header__title">{$Title.XML}</div>
        <% if $Tagline %>
        <div class="nsw-header__description">{$Tagline.XML}</div>
        <% end_if %>
        <% end_with %>
    </div>
<% end_if %>
