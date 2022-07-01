<div class="nsw-block<% if $SpacingClass %>{$SpacingClass}<% end_if %>">
<% if $Top.IsLandingPage %>
    <div class="nsw-container">
<% end_if %>

        <% include NSWDPC/Waratah/PageContentTitle %>
        <% include NSWDPC/Waratah/PageContentAbstract %>
        <% include NSWDPC/Waratah/PageContentMetadata %>
        <% include NSWDPC/Waratah/PageContentRelated %>
        <% include NSWDPC/Waratah/PageContentAction %>

<% if $Top.IsLandingPage %>
    </div>
<% end_if %>
</div>
