<% if $Member %>
    <% with $Member %>

        <% with $ProfileProvider %>
            <% if $Biography %>
                <p class="nsw-intro">{$Biography}</p>
            <% end_if %>
        <% end_with %>

    <% end_with %>
<% else %>

    <%-- NOT FOUND --%>
<% end_if %>
