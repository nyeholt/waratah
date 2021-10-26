<%if $Type=='userformsoptionset' %>
<% include SilverStripe/Forms/OptionsetField_holder HolderID=$Name %>
<% else %>
<% include SilverStripe/Forms/CheckboxSetField_holder HolderID=$Name %>
<% end_if %>
