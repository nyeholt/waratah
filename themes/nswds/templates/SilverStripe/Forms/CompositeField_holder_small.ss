<fieldset class="nsw-form-fieldset small<% if $Zebra %> $Zebra<% end_if %><% if $ParentExtraClass %> {$ParentExtraClass}<%end_if %>" id="$HolderID">

    <!-- compositefieldholder_small -->

    <% if $Legend %>
        <legend><span class="nsw-form-legend-text">$Legend</span></legend>
    <% else_if $Title %>
        <legend><span class="nsw-form-legend-text">$Title</span></legend>
    <% end_if %>

    $Field

</fieldset>
