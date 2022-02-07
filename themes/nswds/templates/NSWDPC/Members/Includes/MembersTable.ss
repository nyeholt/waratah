<% if $Members %>
<table class="nsw-table">
    <thead>
        <tr>
            <th><%t nswds.FIRST_NAME 'First Name' %></th>
            <th>%t nswds.LAST_NAME 'Last Name' %></th>
        </tr>
    </thead>
    <tbody>
        <% loop $Members %>
            <tr>
                <td><a href="{$ProfileLink}">$FirstName.XML</a></td>
                <td><a href="{$ProfileLink}">$Surname.XML</a></td>
            </tr>
        <% end_loop %>
    </tbody>
</table>
<% end_if %>
