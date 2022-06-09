<form $AttributesHTML>

<% include SilverStripe/UserForms/Form/UserFormProgress %>
<% include SilverStripe/UserForms/Form/UserFormStepErrors %>

<% include NSWDPC/Waratah/Forms/Notifications %>

<div class="nsw-form__group main">
<fieldset class="nsw-form__fieldset">
    <% include NSWDPC/Waratah/Forms/Legend %>
    <% include SilverStripe/UserForms/Form/UserFormFields %>
</fieldset>
</div>

<% if $Steps.Count > 1 %>
	<% include SilverStripe/UserForms/Form/UserFormStepNav %>
<% else %>
	<% include SilverStripe/UserForms/Form/UserFormActionNav %>
<% end_if %>

</form>
