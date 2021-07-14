<div class="nsw-container nsw-p-top-sm nsw-p-bottom-lg">
    <div class="nsw-page-layout">
        <% if $IsLandingPage %>
            <% include NSWDPC/Waratah/PageContent %>
        <% else %>
            <% if $Menu(2) %>
                <% include NSWDPC/Waratah/Sidebar %>
            <% end_if %>
            <% include NSWDPC/Waratah/PageContent %>
        <% end_if %>
    </div>
</div>
