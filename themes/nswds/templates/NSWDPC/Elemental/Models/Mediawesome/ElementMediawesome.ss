<div class="nsw-wysiwyg-content nsw-block">
    <% if $ShowTitle && $Title %>
        <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
            {$Title}
        </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
    <% end_if %>
    <% if $HTML %>
        {$HTML}
    <% end_if %>
</div>
<div class="nsw-grid">
    <% loop $RecentPosts %>
        <div class="nsw-col nsw-col-md-4">
            <div class="nsw-card nsw-card--content">
                <div class="nsw-card__content">
                    <h2 class="nsw-card__title">
                        <a href="{$Link}" class="nsw-card__link" title="More information about $Title">{$MenuTitle.XML}</a>
                    </h2>
                    <% if $Tags %>
                        <% loop $Tags %>
                            <% if First %>
                                <p class="nsw-card__tag">{$Title.XML}</p>
                            <% end_if %>
                        <% end_loop %>
                    <% end_if %>
                    <p class="nsw-card__date">
                        <time datetime="{$Date}">{$Date.Full}</time>
                    </p>
                    <% if $Abstract %>
                        <p class="nsw-card__copy">{$Abstract.XML}</p>
                    <% end_if %>
                    <i class="material-icons nsw-material-icons nsw-card__icon" focusable="false" aria-hidden="true">east</i>
                </div>
            </div>
        </div>
    <% end_loop %>
</div>
<div>
    <a href="$MediaHolder.Link" class="nsw-button nsw-button--primary" title="View more">View more</a>
</div>

