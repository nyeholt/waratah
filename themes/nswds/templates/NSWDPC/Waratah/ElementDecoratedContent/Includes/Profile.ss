<%-- TODO: use a nswds component --%>
<% if $Image %>
    <div class="nsw-grid">
    <% if $ImageAlignment == "left" %>
        <div class="nsw-col nsw-col-md-4">
        <% include NSWDPC/Waratah/ElementDecoratedContent/ProfileImage %>
        </div>
        <div class="nsw-col nsw-col-md-8">
        <% include NSWDPC/Waratah/ElementDecoratedContent/ProfileContent %>
        </div>
    <% else %>
        <div class="nsw-col nsw-col-md-8">
        <% include NSWDPC/Waratah/ElementDecoratedContent/ProfileContent %>
        </div>
        <div class="nsw-col nsw-col-md-4">
        <% include NSWDPC/Waratah/ElementDecoratedContent/ProfileImage %>
        </div>
    <% end_if %>
    </div>
<% else %>
    {$HTML}
<% end_if %>



