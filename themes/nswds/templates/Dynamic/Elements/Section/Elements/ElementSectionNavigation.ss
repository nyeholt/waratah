<% if $ShowTitle && $Title %>
    <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
        {$Title}
    </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
<% end_if %>
<% if $SectionNavigation %>
    <div class="nsw-grid">
        <% loop $SectionNavigation %>
            <div class="nsw-col nsw-col-sm-6 nsw-col-md-4">
                <div class="nsw-card">
                    <div class="nsw-card__content">
                        <h2 class="nsw-card__title">
                            <a href="{$Link}" class="nsw-card__link" title="Go to the $MenuTitle.XML page">
                                {$MenuTitle.XML}
                            </a>
                        </h2>
                        <% if $Abstract %>
                            <p class="nsw-card__copy">
                                {$Abstract}
                            </p>
                        <% end_if %>
                        <i class="material-icons nsw-material-icons nsw-card__icon" focusable="false" aria-hidden="true">east</i>
                    </div>
                </div>
            </div>
        <% end_loop %>
    </div>
    <% include Pagination PaginatedItems=$Items %>
<% end_if %>
