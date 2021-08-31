<% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>
<% if $HTML %>
    <div class="nsw-body-content">
        {$HTML}
    </div>
<% end_if %>
<% include nswds/LinkList LinkList_Items=$ElementLinks %>
