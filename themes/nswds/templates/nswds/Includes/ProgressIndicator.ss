<div class="nsw-progress-indicator">

    <% if $UseProgressElement %>

        <progress max="{$Total}" value="{$Step}">
            <%t nswds.PROGRESS_STEP 'Step {step} of {total}' step=$Step total=$Total %>
        </progress>

    <% else %>

        <div class="nsw-progress-indicator__count">
            <%t nswds.PROGRESS_STEP 'Step {step} of {total}' step=$Step total=$Total %>
        </div>

        <div class="nsw-progress-indicator__bar">
            <% loop $Items %>
            <div class="nsw-progress-indicator__step<% $IsActive %>nsw-progress-indicator__step--active<% end_if %>"></div>
            <% end_loop %>
        </div>

    <% end_if %>

</div>
