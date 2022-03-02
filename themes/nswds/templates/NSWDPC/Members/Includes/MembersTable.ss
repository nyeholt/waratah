<% if $Members %>

    <% if $DirectoryDisplay == 'table' %>
        <table class="nsw-table">
            <thead>
                <tr>
                    <th><%t nswds.FIRST_NAME 'First Name' %></th>
                    <th><%t nswds.LAST_NAME 'Last Name' %></th>
                </tr>
            </thead>
            <tbody>
                <% loop $Members %>
                    <tr>
                        <td><a href="{$PublicProfileLink}">$FirstName.XML</a></td>
                        <td><a href="{$PublicProfileLink}">$Surname.XML</a></td>
                    </tr>
                <% end_loop %>
            </tbody>
        </table>
    <% else %>

        <%-- card view --%>
        <div class="nsw-grid">
        <% loop $Members %>
            <% include nswds/Card Card_Title=$ProfileProvider.DisplayName, Card_Description=$ProfileProvider.Biography, Card_LinkURL=$PublicProfileLink, Card_Date=$ProfileProvider.Created, Card_Tag=$ProfileProvider.Organisation %>
        <% end_loop %>
        </div>

    <% end_if %>
<% end_if %>
