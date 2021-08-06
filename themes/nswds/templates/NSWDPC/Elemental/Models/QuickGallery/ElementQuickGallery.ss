<% if $GalleryType == "grid" %>
    <section class="nsw-six-col-image-gallery">
        <div class="nsw-container">
            <div class="nsw-grid">
                <div class="col">
                    <% if $ShowTitle && $Title %>
                            <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %> class="nsw-six-col-image-gallery-title">
                                {$Title.XML}
                            </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
                    <% end_if %>
                    <% if $HTML %>
                        <div class="nsw-six-col-image-gallery-descriptions">
                            {$HTML}
                        </div>
                    <% end_if %>
                    <div class="nsw-grid nsw-six-col-image-gallery-container">
                        <% loop $SortedImages %>
                            <div class="col-6 col-md-4 col-lg-2 nsw-six-col-image-gallery-image">
                                <button type="button" aria-label="View image" class="nsw-six-col-image-gallery-image__item" data-caption="<% if Up.ShowCaptions %>{$Title.XML}<% end_if %>" data-img="{$FocusFillMax(1600,1600).URL}" style="background-image: url('{$FocusFillMax(300,180).URL}'); background-position: $Image.PercentageX% $Image.PercentageY%;"></button>
                            </div>
                        <% end_loop %>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="spacer spacer--md"></div>
<% else %>
    <section class="nsw-three-col-carousel-with-heading">
        <div class="nsw-container">
            <div class="nsw-grid">
                <div class="col">
                    <% if $ShowTitle && $Title %>
                            <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %> class="nsw-three-col-carousel-with-heading-title">
                                {$Title.XML}
                            </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
                    <% end_if %>
                    <% if $HTML %>
                        <div class="nsw-three-col-carousel-with-heading-descriptions">
                            {$HTML}
                        </div>
                    <% end_if %>
                    <div class="nsw-three-col-carousel-with-heading__carousel nsw-grid">
                        <div class="col-12">
                            <div class="three-col-carousel">
                                <div class="three-col-carousel_carousel nsw-grid justify-content-center">
                                    <% loop $SortedImages %>
                                        <div class="three-col-carousel_carousel-item col">
                                            <button type="button" class="three-col-carousel_carousel-btn">
                                                <figure>
                                                    <img src="{$FocusFillMax(1600,1200).URL}" alt="{$AltText}" data-caption="<% if Up.ShowCaptions %>{$Title.XML}<% end_if %>">
                                                    <% if $Up.ShowCaptions %><figcaption>{$Title.XML}</figcaption><% end_if %>
                                                </figure>
                                            </button>
                                        </div>
                                    <% end_loop %>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="spacer spacer--md"></div>
<% end_if %>
