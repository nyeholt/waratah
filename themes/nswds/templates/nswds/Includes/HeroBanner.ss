<div class="nsw-hero-banner<% if $HeroBanner_WithLines %> nsw-hero-banner--lines<% end_if %><% if $HeroBanner_Brand %> nsw-hero-banner--{$HeroBanner_Brand.XML}<% end_if %><% if $HeroBanner_IsWide %> nsw-hero-banner--wide<% end_if %>">

    <div class="nsw-hero-banner__container">

        <div class="nsw-hero-banner__wrapper">

            <div class="nsw-hero-banner__content">

                <h1>{$HeroBanner_Title}</h1>

                <% if $HeroBanner_HTML %>
                    <%-- simple HTML --%>
                    <div class="nsw-intro">
                    {$HeroBanner_HTML}
                    </div>
                <% else %>
                    <p class="nsw-intro">{$HeroBanner_Content.XML}</p>
                <% end_if %>

                <% if $HeroBanner_Link %>
                    <%-- a URL passed as a Link object --%>
                    <div class="nsw-hero-banner__button">
                        <% if $HeroBanner_Brand == 'dark' %>
                            <% include nswds/Button Button_ExtraClass='nsw-button--white', Button_LinkURL=$HeroBanner_Link.LinkURL, Button_Title=$HeroBanner_Link.Title %>
                        <% else %>
                            <% include nswds/Button Button_LinkURL=$HeroBanner_Link.LinkURL, Button_Title=$HeroBanner_Link.Title %>
                        <% end_if %>
                    </div>
                <% else_if $HeroBanner_LinkURL %>
                    <%-- a URL passed as a string --%>
                    <div class="nsw-hero-banner__button">
                        <% if $HeroBanner_Brand == 'dark' %>
                            <% if $HeroBanner_LinkTitle %>
                                <% include nswds/Button Button_ExtraClass='nsw-button--white', Button_LinkURL=$HeroBanner_LinkURL, Button_Title=$HeroBanner_LinkTitle %>
                            <% else %>
                                <% include nswds/Button Button_ExtraClass='nsw-button--white', Button_LinkURL=$HeroBanner_LinkURL, Button_Title='Read more' %>
                            <% end_if %>
                        <% else %>
                            <% if $HeroBanner_LinkTitle %>
                                <% include nswds/Button Button_LinkURL=$HeroBanner_LinkURL, Button_Title=$HeroBanner_LinkTitle %>
                            <% else %>
                                <% include nswds/Button Button_LinkURL=$HeroBanner_LinkURL, Button_Title='Read more' %>
                            <% end_if %>
                        <% end_if %>
                    </div>
                <% end_if %>

            </div>

            <% if $HeroBanner_Links %>
            <div class="nsw-hero-banner__links">
                <div class="nsw-hero-banner__list">
                    <div class="nsw-hero-banner__sub-title">{$HeroBanner_LinksTitle}</div>
                    <ul>
                    <% loop $HeroBanner_Links %>
                        <li><a href="{$Link.XML}">{$Title.XML}</a></li>
                    <% end_loop %>
                    </ul>
                </div>
            </div>
            <% else %>
                <% if $HeroBanner_IsWide %>
                    <% if $HeroBanner_WithLines %>
                        <div class="nsw-hero-banner__box">
                            <div class="nsw-hero-banner__lines"></div>
                        </div>
                    <% end_if %>
                <% else_if $HeroBanner_Image || $HeroBanner_ImageURL || $HeroBanner_WithLines %>
                <div class="nsw-hero-banner__box" role="presentation">
                    <% if $HeroBanner_WithLines %>
                        <div class="nsw-hero-banner__lines"></div>
                    <% else_if $HeroBanner_Image %>
                        <img class="nsw-hero-banner__image" src="{$HeroBanner_Image.FocusFill(500,500).URL}" alt="{$HeroBanner_Image.AltText.XML}">
                    <% else_if $HeroBanner_ImageURL %>
                        <img class="nsw-hero-banner__image" src="{$HeroBanner_ImageURL}" width="500" height="500" alt="">
                    <% else %>
                        <div class="nsw-hero-banner__bg"></div>
                    <% end_if %>
                </div>
                <% end_if %>
            <% end_if %>

        </div>
        <%-- nsw-hero-banner__wrapper --%>

    </div>
    <%-- nsw-hero-banner__container --%>

</div>
<%-- nsw-hero-banner --%>
