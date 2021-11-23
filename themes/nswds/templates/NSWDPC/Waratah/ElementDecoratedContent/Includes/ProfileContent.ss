<% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>
<% if $Subtitle %>
    <h4>{$Subtitle.XML}</h4>
<% end_if %>
<div class="profile-content nsw-block">
    {$HTML}
    <% if $LinkTarget %>
        <p><% include nswds/Button Button_LinkURL=$LinkTarget.LinkURL, Button_Title=$CallToAction %></p>
    <% end_if %>
</div>




