<% if $IsKeywordLookup %>
    <%-- single value lookup form --%>
    <form $AttributesHTML>
        <div class="nsw-form__input-group">
            <% with $IsKeywordLookup %>
            <input $AttributesHTML>
            <% end_with %>
            <% loop $Actions %>
                {$Field}
            <% end_loop %>
        </div>
        <% if $HiddenFields %>
        <% loop $HiddenFields %>
            {$FieldHolder}
        <% end_loop %>
        <% end_if %>
    </form>
<% else  %>
    <%-- defer to the NSWDS Filter Form component --%>
    <% include nswds/FilterForm ClearLink=$CurrentPage.ClearResultsLink %>
<% end_if %>
