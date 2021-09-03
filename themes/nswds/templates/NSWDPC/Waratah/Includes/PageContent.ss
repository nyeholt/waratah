
<% if $CurrentPage.IsLandingPage %>
    <section class="nsw-section--white">
    <div class="nsw-container">
<% end_if %>

    <div class="nsw-block">
        <% include NSWDPC/Waratah/PageContentTitle %>
        <% include NSWDPC/Waratah/PageContentAbstract %>
        <% include NSWDPC/Waratah/PageContentAction %>
    </div>

<% if $CurrentPage.IsLandingPage %>
    </div>
    </section>
<% end_if %>

<%-- elements handle their own container-isation --%>
<% include NSWDPC/Waratah/PageElemental %>

<% if $CurrentPage.IsLandingPage %>
    <div class="nsw-container">
<% end_if %>

    <% include NSWDPC/Waratah/PageForm %>

<% if $CurrentPage.IsLandingPage %>
</div>
<% end_if %>
