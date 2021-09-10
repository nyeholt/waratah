<div class="nsw-masthead">
    <div class="nsw-container">
    <% if $Masthead_Title != '' %>
        <p>{$Masthead_Title.XML}</p>
    <% else %>
        <p><%t nswds.NSW_GOVT_WEBSITE 'A NSW Government website' %></p>
    <% end_if %>
    </div>
</div>
