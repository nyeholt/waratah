<section class="nsw-two-col-image-slider">
    <div class="nsw-container">
        <div class="nsw-grid">

            <%if $HomepageHero || $HTML %>
                <div class="col-12 col-md-5 nsw-two-col-image-slider__left-col">
                    <div class="nsw-two-col-image-slider__left-col__inner">
                        <%if $HomepageHero %>
                            <svg class="nsw-icon nsw-two-col-image-slider__logo" focusable="false" aria-hidden="true" width="358" height="178">
                                <use xlink:href="#AustraliaDay_logo"></use>
                            </svg>
                        <% end_if %>
                        <%if $HTML %>
                            <div class="nsw-two-col-image-slider__copy">
                                {$HTML}
                            </div>
                        <% end_if %>
                        <%if $HeroLink %>
                            <a class="nsw-two-col-image-slider__btn" href="$HeroLink.LinkURL">
                                {$HeroLink.Title}
                            </a>
                        <% end_if %>
                    </div>
                </div>
            <% end_if %>

            <% if $Slides %>
                <div class="col-12 col-md-7 nsw-two-col-image-slider__right-col">
                    <% with $SortedSlides.First %>
                        <div class="nsw-two-col-image-slider__bg" style="background-image: url('{$Image.FocusFillMax(1140,600).URL}');background-position:$Image.PercentageX% $Image.PercentageY%">
                            <div class="nsw-two-col-image-slider__bg-overlay"></div>
                        </div>
                    <% end_with %>
                    <div id="homeHero" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <% loop $SortedSlides %>
                                <div class="carousel-item<%if $First %> active<% end_if %>" data-bg-url="{$Image.FocusFillMax(1140,600).URL}" data-bg-pos="$Image.PercentageX% $Image.PercentageY%">
                                    <%if $Link %><a<% if $Title %> title="{$Title.XML}"<% end_if %> href="{$Link.LinkURL}"><% end_if %>
                                        <h3>{$Title}</h3>
                                        <% if $Content %>
                                            <p>{$Content} &#x3E;</p>
                                        <% end_if %>
                                    <%if $Link %></a><% end_if %>
                                </div>
                            <% end_loop%>
                        </div>
                        <% if $SortedSlides.Count > 1 %>
                            <div class="carousel-control-wrapper">
                                <div class="carousel-indicators-wrapper">
                                    <span class="current-slide">1</span>
                                    <ol class="carousel-indicators">
                                        <% loop $SortedSlides %>
                                            <li data-target="#homeHero" data-slide-to="$Pos(0)"<%if $First %> class="active"<% end_if %>></li>
                                        <% end_loop%>
                                    </ol>
                                    <span><% if $SortedSlides.Count < 10 %>0{$SortedSlides.Count}<% else %>{$SortedSlides.Count}<% end_if %></span>
                                </div>
                                <div class="carousel-control">
                                    <button type="button" class="carousel-control-prev" data-target="#homeHero" data-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"><i class="fas fa-angle-left"></i></span>
                                        <span class="sr-only">Previous</span>
                                    </button>
                                    <button type="button" class="carousel-control-next" data-target="#homeHero" data-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"><i class="fas fa-angle-right"></i></span>
                                        <span class="sr-only">Next</span>
                                    </button>
                                </div>
                            </div>
                        <% end_if %>
                    </div>
                </div>
            <% end_if %>
        </div>
    </div>
</section>
<div class="spacer spacer--md"></div>
