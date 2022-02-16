<%--
    If JavaScript is disabled multi-step forms are displayed as a single page
    so the 'prev' and 'next' button are not used. These buttons are made visible via JavaScript.
--%>

<fieldset id="step-navigation" class="step-navigation nsw-form__fieldset">
    <div class="step-buttons">

        <button class="step-button-prev nsw-button nsw-button--dark-outline nsw-button--full-width" aria-hidden="true" style="display:none;">
            <%t nswds.STEP_PREVIOUS "Previous" %>
        </button>

        <button class="step-button-next nsw-button nsw-button--dark-outline nsw-button--full-width" aria-hidden="true" style="display:none;">
            <%t nswds.STEP_NEXT "Next" %>
        </button>

    </div>

    <% if $Actions %>
    <div class="nsw-m-top-md">
        <fieldset class="nsw-form__fieldset actions btn-toolbar">
            <legend>
                <span class="nsw-form__legend"><%t nswds.STEP_FORM_ACTION_LEGEND 'Choose an action to complete the form' %></span>
            </legend>
            <% loop $Actions %>
                {$Field}
            <% end_loop %>
        </fieldset>
    </div>
    <% end_if %>

</fieldset>
