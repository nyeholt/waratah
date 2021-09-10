<% if $SortedSlides %>

<div class="slider">

    <% if $HomepageHero %>

        <div class="slides">

        <% with $SortedSlides.First %>

            <% include nswds/HeroBanner HeroBanner_IsDark=1, HeroBanner_Link=$Link, HeroBanner_Title=$Title, HeroBanner_Image=$Image, HeroBanner_Content=$Content %>
        <% end_with %>

        </div>

    <% else %>

        <div class="nsw-container">

            <div class="slides">

                <div class="nsw-grid">

                <div class="nsw-col nsw-col-12">
                    <% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>

                    <% if $HTML %>
                        {$HTML}
                    <% end_if %>

                    <% if $HeroLink %>
                        <a href="$HeroLink.LinkURL" class="nsw-button nsw-button--primary">{$HeroLink.Title}</a>
                    <% end_if %>

                    <div class="nsw-grid">

                    <% loop $SortedSlides %>

                        <% include nswds/ContentBlock ContentBlock_Title=$Title, ContentBlock_Content=$Content, ContentBlock_Image=$Image, ContentBlock_Link=$Link, ContentBlock_ColumnOptions='nsw-col-md-6 nsw-col-lg-4', ContentBlock_ImageHeight=200 %>

                    <% end_loop %>

                    </div>

                </div>

            </div>

        </div>

    <% end_if %>

</div>

<% end_if %>
