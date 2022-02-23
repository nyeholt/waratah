
<div id="$HolderID" class="nsw-form__group wrth-form__composite<% if $Zebra %> {$Zebra}<% end_if %><% if $ParentExtraClass %> {$ParentExtraClass}<% end_if %>" data-is-composite="1">

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

        <fieldset class="nsw-form__fieldset">

            <% if $Legend %>
                <legend><span class="nsw-form__legend">$Legend</span></legend>
            <% else_if $Title %>
                <legend><span class="nsw-form__legend">$Title</span></legend>
            <% end_if %>

            <div class="field">
            $Field
            </div>

        </fieldset>

    <% end_if %>

</div>
