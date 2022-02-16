<% if $Actions %>
<fieldset class="nsw-form__fieldset actions btn-toolbar">
    <% loop $Actions %>
        $Field
    <% end_loop %>
</fieldset>
<% end_if %>
