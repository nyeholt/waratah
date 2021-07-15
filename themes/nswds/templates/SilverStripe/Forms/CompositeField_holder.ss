
<% if $FormFieldHint == 'callout' %>

    <div class="nsw-callout">
        <% include nswds/Icon Icon='info', IconExtraClass='nsw-callout__icon' %>
        <div class="nsw-callout__content">
        <% loop $FieldList %>
            <% if $Pos == 1 %>
                <h4 class="nsw-callout__title">{$Title.XML}</h4>
            <% else %>
                $FieldHolder
            <% end_if %>
        <% end_loop %>
        </div>
    </div>

<% else %>

<fieldset class="nsw-form-fieldset<% if $Zebra %> $Zebra<% end_if %>" id="$HolderID">

    <% if $Legend %>
        <legend><span class="nsw-form-legend-text">$Legend</span></legend>
    <% else_if $Title %>
        <legend><span class="nsw-form-legend-text">$Title</span></legend>
    <% end_if %>

    $Field

</fieldset>

<% end_if %>
