<div class="nsw-form__date-wrapper">
<% loop $Children %>
    <%-- for our purposes, the year field will always be last --%>
    <div class="nsw-form__date-input<% if $Last %> nsw-form__date-input--large<% end_if %>">
        {$FieldHolder}
    </div>
<% end_loop %>
</div>
