<% if $Top.IsLandingPage %>
    <div class="nsw-container">
<% end_if %>

<section class="<% if $SpacingClass %>{$SpacingClass.XML}<% end_if %>">

        <% include NSWDPC/Waratah/PageContentTitle %>
        <% include NSWDPC/Waratah/PageContentAbstract %>
        <% include NSWDPC/Waratah/PageContentMetadata %>
        <% include NSWDPC/Waratah/PageContentRelated %>
        <% include NSWDPC/Waratah/PageContentAction %>

</section>

<% if $Top.IsLandingPage %>
    </div>
<% end_if %>
