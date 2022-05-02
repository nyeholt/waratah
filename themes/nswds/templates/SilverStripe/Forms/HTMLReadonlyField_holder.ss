<% if $FormFieldHint == 'callout' %>
    <%-- render as callout --%>
    <div class="nsw-callout">
        <% if $FormFieldHintIcon %>
            <% include nswds/Icon Icon_Icon=$FormFieldHintIcon, Icon_IconExtraClass='nsw-callout__icon' %>
        <% else %>
            <% include nswds/Icon Icon_Icon='info', Icon_IconExtraClass='nsw-callout__icon' %>
        <% end_if %>
        <div class="nsw-callout__content">
            <% if $Title %>
            <h4 class="nsw-callout__title">{$Title.XML}</h4>
            <% end_if %>
            {$Value}
        </div>
    </div>
<% else %>
    {$Field}
<% end_if %>
