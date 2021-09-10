<div class="nsw-banner<% if $HeroBanner_IsDark %> nsw-banner--dark<% end_if %><% if $HeroBanner_IsWide %> nsw-banner--wide<% end_if %>">

    <div class="nsw-banner__container">

        <div class="nsw-banner__wrapper">

            <div class="nsw-banner__content nsw-wysiwyg-content">

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
                <div class="nsw-banner__button">
                    <% if $HeroBanner_IsDark %>
                        <% include nswds/Button Button_ExtraClass='nsw-button--white', Button_LinkURL=$HeroBanner_Link.LinkURL, Button_Title=$HeroBanner_Link.Title %>
                    <% else %>
                        <% include nswds/Button Button_LinkURL=$HeroBanner_Link.LinkURL, Button_Title=$HeroBanner_Link.Title %>
                    <% end_if %>
                </div>
                <% end_if %>

            </div>

            <% if $HeroBanner_Links %>
            <div class="nsw-banner__links">
                <div class="nsw-banner__list">
                    <div class="nsw-banner__sub-title">{$HeroBanner_LinksTitle}</div>
                    <ul>
                    <% loop $HeroBanner_Links %>
                        <li><a href="{$Link.XML}">{$Title.XML}</a></li>
                    <% end_loop %>
                    </ul>
                </div>
            </div>
            <% end_if %>

            <% if not $HeroBanner_IsWide || $HeroBanner_Image %>
            <div class="nsw-banner__box" role="presentation">
                <% if $HeroBanner_Image %>
                    <img class="nsw-banner__image" src="{$HeroBanner_Image.Fill(500,500).URL}" alt="{$HeroBanner_Image.AltText.XML}">
                <% else %>
                    <div class="nsw-banner__bg"></div>
                <% end_if %>
            </div>
            <% end_if %>

        </div>
        <%-- nsw-banner__wrapper --%>

    </div>
    <%-- nsw-banner__container --%>

</div>
<%-- nsw-banner --%>
