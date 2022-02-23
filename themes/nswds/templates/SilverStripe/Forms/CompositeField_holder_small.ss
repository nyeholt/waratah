<div id="$HolderID" class="nsw-form__group wrth-form__composite small<% if $Zebra %> {$Zebra}<% end_if %><% if $ParentExtraClass %> {$ParentExtraClass}<%end_if %>" data-is-composite="1">

    <fieldset class="nsw-form__fieldset">

        <% if $Legend || $Title %>
            <legend>
                <span class="nsw-form__legend">
                <% if $Legend %>{$Legend}<% else %>{$Title}<% end_if %>
                </span>
            </legend>
        <% end_if %>

        {$Field}

    </fieldset>

</div>
