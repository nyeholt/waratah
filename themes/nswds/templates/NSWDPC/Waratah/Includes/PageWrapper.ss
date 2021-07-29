<div class="nsw-container nsw-p-top-sm nsw-p-bottom-lg">
    <div class="nsw-page-layout">
        <% if $IsLandingPage %>
            <% include NSWDPC/Waratah/PageContent %>
        <% else %>
            <% include NSWDPC/Waratah/Sidebar %>
            <% include NSWDPC/Waratah/PageContent %>
        <% end_if %>
    </div>
</div>
