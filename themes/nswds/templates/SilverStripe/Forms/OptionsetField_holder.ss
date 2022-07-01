<div id="{$HolderID}" class="nsw-form__group wrth-form__optionset<% if $ParentExtraClass %> {$ParentExtraClass}<% end_if %>">

    <fieldset class="nsw-form__fieldset">

        <legend>
           <% if $Title %><span class="nsw-form__legend<% if $Required %> nsw-form__required<% end_if %>">{$Title}</span><% end_if %>
           <% include NSWDPC/Waratah/Forms/Description %>
           <% include nswds/FormFieldMessage FormFieldMessage_IsCompact=1, FormFieldMessage_Message=$Message, FormFieldMessage_MessageType=$MessageType %>
         </legend>

         <div class="field">
         {$Field}
         </div>

         <% include NSWDPC/Waratah/Forms/RightTitle %>

    </fieldset>

</div>
