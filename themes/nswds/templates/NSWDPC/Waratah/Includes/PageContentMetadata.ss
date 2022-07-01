<% if $Date || $MediaAttributes %>
<p>
<% if $Date %>
        <time datetime="{$Date}">{$Date.Long}</time>
<% if $MediaAttributes %><br><% end_if %>
<% end_if %>

<% if $MediaPageAttributes %>

    <% with $MediaPageAttributes.Filter('MediaAttribute.Title','Author').First %>
        <% if $Content %>
        <strong>{$Content.XML}</strong>
        <% end_if %>
    <% end_with %>

<% end_if %>
</p>
<hr>
<% end_if %>

<% if $Tags %>
    <% include nswds/Tags Tags_List=$Tags %>
<% end_if %>
