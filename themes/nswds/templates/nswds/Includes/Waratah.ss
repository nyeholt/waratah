<div class="nsw-header__waratah">
    <a href="<% if $AlternateHomeURL %>{$AlternateHomeURL.XML}<% else %>{$BaseHref}<% end_if %>">
        <% if $Waratah_Endorsed == '' %>
            <%-- cobrand or masterbrand --%>
            <% include nswds/Waratah_SVG %>
            <% if $Waratah_CoBrand %>
                <%-- vertical or horizontal --%>
                <% include nswds/Waratah_CoBrand %>
            <% end_if %>
        <% else %>
            <%-- endorsed brand goes first --%>
            <% include nswds/Waratah_EndorsedBrand %>
            <% if $Waratah_Endorsed == 'coupled' %>
            <% include nswds/Waratah_SVG %>
            <% end_if %>
        <% end_if %>
    </a>
</div>
<% if $Waratah_Masterbrand %>
    <%-- masterband has title and tagline --%>
    <div class="nsw-header__name">
        <% with SiteConfig %>
        <div class="nsw-header__title">{$Title.XML}</div>
        <% if $Tagline %>
        <div class="nsw-header__description">{$Tagline.XML}</div>
        <% end_if %>
        <% end_with %>
    </div>
<% end_if %>
