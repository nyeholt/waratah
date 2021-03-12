<div class="nsw-feature-tile">
    <div class="nsw-wysiwyg-content nsw-block">
        <% if $ShowTitle && $Title %>
            <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %> class="nsw-feature-tile__title">
                <i class="material-icons nsw-material-icons" focusable="false" aria-hidden="true">east</i>
                <span>{$Title}</span>
            </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
        <% end_if %>
        <% if $HTML %>
            <div class="nsw-body-content">
                {$HTML}
            </div>
        <% end_if %>
    </div>
    <% if $ElementLinks %>
        <div class="nsw-feature-tile__links-group">
            <ul<% if $$ElementLinks.Count > 6 %> class="nsw-feature-tile__double-list"<% end_if %>>
                <% loop $ElementLinks %>
                    <li>
                        <a href="{$LinkURL.URL}" class="nsw-feature-tile__link">
                            <span class="link-text">{$Title.XML}</span>
                        </a>
                    </li>
                <% end_loop %>
            </ul>
        </div>
    <% end_if %>
</div>
