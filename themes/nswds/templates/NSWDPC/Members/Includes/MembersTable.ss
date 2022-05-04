<% if $DirectoryMembers %>

    <% if $DirectoryDisplay == 'table' %>
        <table class="nsw-table">
            <thead>
                <tr>
                    <th><%t nswds.FIRST_NAME 'First Name' %></th>
                    <th><%t nswds.LAST_NAME 'Last Name' %></th>
                </tr>
            </thead>
            <tbody>
                <% loop $DirectoryMembers %>
                    <tr>
                        <td><a href="{$PublicProfileLink}">$FirstName.XML</a></td>
                        <td><a href="{$PublicProfileLink}">$Surname.XML</a></td>
                    </tr>
                <% end_loop %>
            </tbody>
        </table>
    <% else %>

        <%-- list item view --%>
        <% loop $DirectoryMembers %>
            <% include nswds/ListItem ListItem_Image=$ProfileProvider.ProfileImage, ListItem_Title=$ProfileProvider.DisplayName, ListItem_Abstract=$ProfileProvider.Biography, ListItem_LinkURL=$PublicProfileLink, ListItem_Date=$ProfileProvider.Created, ListItem_PrimaryLabel=$ProfileProvider.Organisation %>
        <% end_loop %>

    <% end_if %>
<% end_if %>
