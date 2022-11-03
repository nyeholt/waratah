<%-- This uses the wrth-feature component, not a nswds component --%>
<div class="wrth-feature">

    <% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>

    <% if not $Image %>
        <div class="nsw-grid">
        <% if $ImageAlignment == "left" %>
            <div class="nsw-col nsw-col-xs-6 nsw-col-md-4">
                <% include NSWDPC/Waratah/ElementDecoratedContent/ProfileImage %>
            </div>
            <div class="nsw-col nsw-col-xs-6 nsw-col-md-8">
                <% include NSWDPC/Waratah/ElementDecoratedContent/ProfileContent %>
            </div>
        <% else %>
            <div class="nsw-col nsw-col-xs-6 nsw-col-md-8">
                <% include NSWDPC/Waratah/ElementDecoratedContent/ProfileContent %>
            </div>
            <div class="nsw-col nsw-col-xs-6 nsw-col-md-4">
                <% include NSWDPC/Waratah/ElementDecoratedContent/ProfileImage %>
            </div>
        <% end_if %>
        </div>
    <% else %>

        <% include NSWDPC/Waratah/ElementDecoratedContent/ProfileContent %>

    <% end_if %>

</div>



