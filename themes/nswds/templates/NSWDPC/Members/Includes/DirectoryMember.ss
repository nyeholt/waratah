<% if $DirectoryMember %>
    <% with $DirectoryMember %>

        <% with $ProfileProvider %>

            $ProviderName

            <% loop $ProfileFieldList %>
            <div class="nsw-block" data-name="{$Name.XML}">
            <h4>{$Label}</h4>
            <p>{$Value.XML}</p>
            </div>
            <% end_loop %>

        <% end_with %>

    <% end_with %>
<% else %>

    <%-- NOT FOUND --%>
<% end_if %>
