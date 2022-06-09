<%--
    If JavaScript is disabled multi-step forms are displayed as a single page
    so the 'prev' and 'next' button are not used. These buttons are made visible via JavaScript.
--%>

<div id="step-navigation" class="nsw-form__group step-navigation">
    <fieldset class="nsw-form__fieldset">

        <div class="nsw-form__group step-buttons">

            <button class="step-button-prev nsw-button nsw-button--dark-outline nsw-button--full-width" aria-hidden="true" style="display:none;">
                <% include nswds/Icon Icon_Icon='navigate_before' %>
                <span><%t nswds.STEP_PREVIOUS "Previous" %></span>
            </button>

            <button class="step-button-next nsw-button nsw-button--dark-outline nsw-button--full-width" aria-hidden="true" style="display:none;">
                <%t nswds.STEP_NEXT "Next" %>
                <% include nswds/Icon Icon_Icon='navigate_next' %>
            </button>

        </div>

        <% if $Actions %>
        <div class="nsw-form__group">
            <fieldset class="nsw-form__fieldset">
                <legend>
                    <span class="nsw-form__legend"><%t nswds.STEP_FORM_ACTION_LEGEND 'Choose an action to complete the form' %></span>
                </legend>
                <div class="nsw-form__group actions">
                <% loop $Actions %>
                    {$Field}
                <% end_loop %>
                </div>
            </fieldset>
        </div>
        <% end_if %>

    </fieldset>
</div>
