<fieldset class="nsw-form__fieldset small<% if $Zebra %> $Zebra<% end_if %><% if $ParentExtraClass %> {$ParentExtraClass}<%end_if %>" id="$HolderID">

    <!-- compositefieldholder_small -->

    <% if $Legend || $Title %>
        <legend>
            <span class="nsw-form__legend">
            <% if $Legend %>{$Legend}<% else %>{$Title}<% end_if %>
            </span>
        </legend>
    <% end_if %>

    {$Field}

</fieldset>
