<div class="nsw-progress-indicator">

    <% if $ProgressIndicator_UseProgressElement %>

        <progress max="{$Total}" value="{$Step}">
            <%t nswds.PROGRESS_STEP 'Step {step} of {total}' step=$Step total=$Total %>
        </progress>

    <% else_if $ProgressIndicator_Items %>

        <div class="nsw-progress-indicator__count">
            <%t nswds.PROGRESS_STEP 'Step {step} of {total}' step=$Step total=$Total %>
        </div>

        <div class="nsw-progress-indicator__bar">
            <% loop $ProgressIndicator_Items %>
            <div class="nsw-progress-indicator__step<% if $IsActive %>nsw-progress-indicator__step--active<% end_if %>"></div>
            <% end_loop %>
        </div>

    <% end_if %>

</div>
