
<% if $FormFieldHint == 'callout' %>

    <div class="nsw-callout">
        <% include nswds/Icon Icon_Icon='info', Icon_IconExtraClass='nsw-callout__icon' %>
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

<fieldset class="nsw-form__fieldset<% if $Zebra %> $Zebra<% end_if %><% if $ParentExtraClass %> {$ParentExtraClass}<% end_if %>" id="$HolderID">

    <% if $Legend %>
        <legend><span class="nsw-form__legend">$Legend</span></legend>
    <% else_if $Title %>
        <legend><span class="nsw-form__legend">$Title</span></legend>
    <% end_if %>

    $Field

</fieldset>

<% end_if %>
