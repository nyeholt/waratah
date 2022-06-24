<% if $Actions %>
<div class="nsw-form__group actions">

    <fieldset class="nsw-form__fieldset">
        <div class="nsw-list nsw-list--32">
        <% loop $Actions %>
            {$Field}
        <% end_loop %>
    </fieldset>

</div>
<% end_if %>
