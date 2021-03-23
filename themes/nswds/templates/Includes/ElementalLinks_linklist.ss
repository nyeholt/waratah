<% if $ShowTitle && $Title %>
    <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
        {$Title.XML}
    </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
<% end_if %>
<% if $HTML %>
    <div class="nsw-body-content">
        {$HTML}
    </div>
<% end_if %>
<% if $ElementLinks %>
    <div class="nsw-link-list">
        <ul class="nsw-link-list__list">
            <% loop $ElementLinks %>
                <li class="nsw-link-list__item">
                    <a href="{$LinkURL.URL}">
                        <span>{$Title.XML}</span>
                        <i class="material-icons nsw-material-icons nsw-link-list__icon" focusable="false" aria-hidden="true">east</i>
                    </a>
                </li>
            <% end_loop %>
        </ul>
    </div>
<% end_if %>
