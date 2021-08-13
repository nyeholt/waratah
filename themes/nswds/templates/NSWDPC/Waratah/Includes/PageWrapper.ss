<div class="nsw-container nsw-p-top-sm nsw-p-bottom-lg">
    <div class="nsw-page-layout">
        <% if $IsLandingPage %>
            <% include NSWDPC/Waratah/PageContent %>
        <% else_if $Menu(2) %>
            <% include NSWDPC/Waratah/SidebarNav %>
            <% include NSWDPC/Waratah/PageContent %>
        <% else %>
            <% include NSWDPC/Waratah/PageContent %>
            <% include NSWDPC/Waratah/Sidebar %>
        <% end_if %>
    </div>
</div>
