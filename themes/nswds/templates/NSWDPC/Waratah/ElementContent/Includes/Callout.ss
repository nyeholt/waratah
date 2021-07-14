<div class="nsw-callout">
    <i class="material-icons nsw-material-icons nsw-callout__icon" focusable="false" aria-hidden="true">info</i>
    <div class="nsw-callout__content">
        <% if $ShowTitle && $Title %>
            <<% if $HeadingLevel %>$HeadingLevel<% else %>h2 class="nsw-callout__title"<% end_if %>>
                {$Title}
            </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
        <% end_if %>
        <% if $HTML %>
            {$HTML}
        <% end_if %>
    </div>
</div>
