<%-- TODO: use a nswds component --%>
<% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>
<% if $Image %>
    <div class="nsw-grid">
        <div class="nsw-col nsw-col-md-8">
            <div class="profile-content">
                {$HTML}
            </div>
        </div>
        <div class="nsw-col nsw-col-md-4">
            <div class="profile-photo">
                <img src="{$Image.FocusFillMax(300,400).URL}" class="img-fluid img-profile" alt="{$Image.AltText.XML}">
            </div>
        </div>
    </div>
<% else %>
    {$HTML}
<% end_if %>
