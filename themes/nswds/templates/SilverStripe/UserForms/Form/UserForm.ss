<form $AttributesHTML>

<% include SilverStripe\\UserForms\\Form\\UserFormProgress %>
<% include SilverStripe\\UserForms\\Form\\UserFormStepErrors %>

<% if $Message %>
    <% include nswds/FormFieldMessage FormFieldMessage_Message=$Message, FormFieldMessage_MessageType=$MessageType %>
<% end_if %>

<% if $Legend %>
    <fieldset class="nsw-form__fieldset">
        <legend>
            <span class="nsw-form__legend">{$Legend}</span>
        </legend>
        <% include SilverStripe\\UserForms\\Form\\UserFormFields %>
    </fieldset>
<% else %>
    <% include SilverStripe\\UserForms\\Form\\UserFormFields %>
<% end_if %>

<% if $Steps.Count > 1 %>
	<% include SilverStripe\\UserForms\\Form\\UserFormStepNav %>
<% else %>
	<% include SilverStripe\\UserForms\\Form\\UserFormActionNav %>
<% end_if %>

</form>
