<div class="nsw-news-detail__copy">
    <div class="nsw-container">
        <div class="nsw-grid justify-content-center">
            <div class="col-12">
                <% if $ShowTitle && $Title %>
                    <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
                        {$Title}
                    </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
                <% end_if %>
                <% if $Subtitle %>
                    <p><strong>$Subtitle.XML</strong></p>
                <% end_if %>
                $HTML
                <% if $ElementLink %>
                    <p>
                        <a href="$ElementLink.LinkURL" title="$ElementLink.Title">
                            $ElementLink.Title
                        </a>
                    </p>
                <% end_if %>
                <% if $ElementImage %>
                    <img src="$ElementImage.URL" class="img-fluid" alt="$ElementImage.Title.XML">
                <% end_if %>
            </div>
        </div>
    </div>
</div>
