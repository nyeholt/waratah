<div class="nsw-wysiwyg-content nsw-block">
    <% if $ShowTitle && $Title %>
        <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
            {$Title.XML}
        </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
    <% end_if %>
    <% if $HTML %>
        {$HTML}
    <% end_if %>
</div>
<% if $ElementLinks %>
    <div class="nsw-grid">
        <% loop $ElementLinks.Sort('Sort') %>
            <div class="nsw-col nsw-col-md-4">
                <div class="nsw-card nsw-card--headline">
                    <div class="nsw-card__content">
                        <h2 class="nsw-card__title">
                            <a href="{$LinkURL}" class="nsw-card__link">{$Title.XML}</a>
                        </h2>
                        <% if $SiteTree.Abstract %>
                            <p class="nsw-card__copy">
                                $SiteTree.Abstract.XML
                            </p>
                        <% end_if %>
                        <i class="material-icons nsw-material-icons nsw-card__icon" focusable="false" aria-hidden="true">east</i>
                    </div>
                </div>
            </div>
        <% end_loop %>
    </div>
<% end_if %>
