<% if $CurrentPage.IsLandingPage %>
    <section class="nsw-section--white">
    <div class="nsw-container">
<% end_if %>

    <div class="nsw-block">
        <% include NSWDPC/Waratah/PageContentTitle %>
        <% include NSWDPC/Waratah/PageContentAbstract %>
        <% include NSWDPC/Waratah/PageContentMetadata %>
        <% include NSWDPC/Waratah/PageContentRelated %>
        <% include NSWDPC/Waratah/PageContentAction %>
    </div>

<% if $CurrentPage.IsLandingPage %>
    </div>
    </section>
<% end_if %>
