<% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>
<% if $HTML %>
    {$HTML}
<% end_if %>
<% if $Elements.Elements %>
    <% include nswds/Accordion Accordion_Items=$Elements.Elements %>
<% end_if %>
