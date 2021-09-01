<% if $Top.SiteConfig %>

<footer class="nsw-footer">

    <% with $Top.SiteConfig %>

    <% if $FooterLinksCol1 || $FooterLinksCol2 || $FooterLinksCol3 || $FooterLinksCol4 %>
        <div class="nsw-footer__upper">
            <div class="nsw-container section-links">
                <% if $FooterLinksCol1 %>
                    <div class="section-links__group">
                        <% if $FooterLinksCol1Title %>
                            <h3 class="section-links__heading">
                                {$FooterLinksCol1Title.XML}
                            </h3>
                        <% end_if %>
                        <% if $FooterLinksCol1 %>
                            <ul class="section-links__list">
                                <% loop $FooterLinksCol1.Sort('Sort') %>
                                    <li class="section-links__item">
                                        <a href="{$LinkURL}">
                                            {$Title.XML}
                                        </a>
                                    </li>
                                <% end_loop %>
                            </ul>
                        <% end_if %>
                    </div>
                <% end_if %>
                <% if $FooterLinksCol2 %>
                    <div class="section-links__group">
                        <% if $FooterLinksCol2Title %>
                            <h3 class="section-links__heading">
                                {$FooterLinksCol2Title.XML}
                            </h3>
                        <% end_if %>
                        <% if $FooterLinksCol2 %>
                            <ul class="section-links__list">
                                <% loop $FooterLinksCol2.Sort('Sort') %>
                                    <li class="section-links__item">
                                        <a href="{$LinkURL}">
                                            {$Title.XML}
                                        </a>
                                    </li>
                                <% end_loop %>
                            </ul>
                        <% end_if %>
                    </div>
                <% end_if %>
                <% if $FooterLinksCol3 %>
                    <div class="section-links__group">
                        <% if $FooterLinksCol3Title %>
                            <h3 class="section-links__heading">
                                {$FooterLinksCol3Title.XML}
                            </h3>
                        <% end_if %>
                        <% if $FooterLinksCol3 %>
                            <ul class="section-links__list">
                                <% loop $FooterLinksCol3.Sort('Sort') %>
                                    <li class="section-links__item">
                                        <a href="{$LinkURL}">
                                            {$Title.XML}
                                        </a>
                                    </li>
                                <% end_loop %>
                            </ul>
                        <% end_if %>
                    </div>
                <% end_if %>
                <% if $FooterLinksCol4 %>
                    <div class="section-links__group">
                        <% if $FooterLinksCol4Title %>
                            <h3 class="section-links__heading">
                                {$FooterLinksCol4Title.XML}
                            </h3>
                        <% end_if %>
                        <% if $FooterLinksCol4 %>
                            <ul class="section-links__list">
                                <% loop $FooterLinksCol4.Sort('Sort') %>
                                    <li class="section-links__item">
                                        <a href="{$LinkURL}">
                                            {$Title.XML}
                                        </a>
                                    </li>
                                <% end_loop %>
                            </ul>
                        <% end_if %>
                    </div>
                <% end_if %>
            </div>
        </div>
    <% end_if %>

    <div class="nsw-footer__lower">

        <div class="nsw-container">

            <% if $FooterContent %>
                <p>{$FooterContent.XML}</p>
                <hr>
            <% else_if $WelcomeToCountry %>
                <p>
                <%t nswds.WELCOME_TO_COUNTRY 'We pay respect to the Traditional Custodians and First Peoples of NSW, and acknowledge their continued connection to their country and culture.' %>
                </p>
                <hr>
            <% end_if %>

            <% if $FooterLinksSub %>
                <ul class="nsw-footer-links">
                    <% loop $FooterLinksSub.Sort('Sort') %>
                    <li class="nsw-footer-links__item">
                        <a href="{$LinkURL}" class="nsw-footer-links__link">
                            {$Title.XML}
                        </a>
                    </li>
                    <% end_loop %>
                </ul>
            <% end_if %>

            <% if $SocialLinks %>
                <ul class="nsw-footer-links nsw-social-links">
                    <% loop $SocialLinks.Sort('Sort') %>
                    <li class="nsw-social-links__item">
                        <a href="{$LinkURL}" class="nsw-social-links__link nsw-social-links__link-{$Title.LowerCase.XML}">
                            <span class="sr-only">{$Title.XML}</span>
                        </a>
                    </li>
                    <% end_loop %>
                </ul>
            <% end_if %>

            <div class="nsw-footer__info">
                <p class="nsw-footer__copyright">
                    <% if $CopyrightOwner %>{$CopyrightOwner.XML} <% else %><%t nswds.COPYRIGHT 'Copyright' %><% end_if %> &copy; {$Now.Year}
                </p>
            </div>

        </div>

    </div>

    <% end_with %>

</footer>

<% end_if %>
