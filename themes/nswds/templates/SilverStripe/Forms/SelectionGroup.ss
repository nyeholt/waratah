
<%-- NOTE: this requires a JS enhancement --%>
<fieldset class="nsw-form__fieldset">

    <% include NSWDPC/Waratah/Forms/Legend %>

    <% loop $FieldSet %>
        <section class="nsw-section nsw-section--half-padding nsw-section--off-white">
            <div class="nsw-container">
                {$RadioButton}
                <label class="nsw-form__radio-label" for="{$Up.ID}_{$Pos}">{$RadioLabel}</label>
                <div class="nsw-form__group">
                {$Field}
                </div>
            </div>
        </section>
    <% end_loop %>

</fieldset>
