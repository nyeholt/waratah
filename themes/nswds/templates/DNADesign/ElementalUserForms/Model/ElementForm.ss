<div class="nsw-news-detail__copy">
    <div class="nsw-container">
        <div class="nsw-grid justify-content-center">
            <div class="col-12">
                <% if $ShowTitle && $Title %>
                    <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
                        {$Title}
                    </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
                <% end_if %>
                $Form
            </div>
        </div>
    </div>
</div>
