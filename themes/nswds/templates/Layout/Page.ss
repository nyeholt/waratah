<div class="nsw-container nsw-p-top-sm nsw-p-bottom-lg">
    <div class="nsw-page-layout">
        <% if $IsLandingPage %>
            <% include PageContent %>
        <% else %>
            <% if $Menu(2) %>
                <% include Sidebar %>
            <% end_if %>
            <% include PageContent %>
        <% end_if %>
    </div>
</div>
