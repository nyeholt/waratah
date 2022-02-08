<% if $Top.IsLandingPage %>
<section class="nsw-section">
    <div class="nsw-container">
<% else %>
    <div class="nsw-block {$SpacingClass}">
<% end_if %>

        <% include NSWDPC/Waratah/PageContentTitle %>
        <% include NSWDPC/Waratah/PageContentAbstract %>
        <% include NSWDPC/Waratah/PageContentMetadata %>
        <% include NSWDPC/Waratah/PageContentRelated %>
        <% include NSWDPC/Waratah/PageContentAction %>

<% if $Top.IsLandingPage %>
    </div>
</section>
<% else %>
    </div>
<% end_if %>
