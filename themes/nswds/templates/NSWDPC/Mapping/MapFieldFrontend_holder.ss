<div id="{$HolderID}" class="nsw-form__group wrth-form__composite<% if $Zebra %> {$Zebra}<% end_if %><% if $ParentExtraClass %> {$ParentExtraClass}<% end_if %>" data-is-composite="1">

    <fieldset class="nsw-form__fieldset">

        <% include NSWDPC/Waratah/Forms/Legend %>

        <section class="nsw-section nsw-section--half-padding nsw-section--off-white">

            <div class="nsw-container">

                <% include nswds/FormFieldMessage FormFieldMessage_IsCompact=1, FormFieldMessage_Message=$Message, FormFieldMessage_MessageType=$MessageType, FormFieldMessage_MessageCast=$MessageCast %>

                <% if $Description %>
                    <div class="nsw-p-bottom-sm">
                    <% include nswds/InPageAlert InPageAlert_Title='Choosing an event location', InPageAlert_Content=$Description, InPageAlert_Icon='place', InPageAlert_Cast='html' %>
                    </div>
                <% end_if %>

                <div class="field">
                {$Field}
                </div>

                <% include NSWDPC/Waratah/Forms/RightTitle %>

            </div>

        </section>

    </fieldset>

</div>
