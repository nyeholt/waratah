<% if $Top.SiteConfig %>

<footer class="nsw-footer">

    <% with $Top.SiteConfig %>

    <% if $FooterLinksCol1 || $FooterLinksCol2 || $FooterLinksCol3 || $FooterLinksCol4 %>
        <div class="nsw-footer__upper">
            <div class="nsw-container">
                <% if $FooterLinksCol1 %>
                    <div class="nsw-footer__group">
                        <% if $FooterLinksCol1Title %>
                            <div class="nsw-footer__heading">
                                {$FooterLinksCol1Title.XML}
                            </div>
                        <% end_if %>
                        <% if $FooterLinksCol1 %>
                            <ul>
                                <% loop $FooterLinksCol1.Sort('Sort') %>
                                    <li>
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
                    <div class="nsw-footer__group">
                        <% if $FooterLinksCol2Title %>
                            <div class="nsw-footer__heading">
                                {$FooterLinksCol2Title.XML}
                            </div>
                        <% end_if %>
                        <% if $FooterLinksCol2 %>
                            <ul>
                                <% loop $FooterLinksCol2.Sort('Sort') %>
                                    <li>
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
                    <div class="nsw-footer__group">
                        <% if $FooterLinksCol3Title %>
                            <div class="nsw-footer__heading">
                                {$FooterLinksCol3Title.XML}
                            </div>
                        <% end_if %>
                        <% if $FooterLinksCol3 %>
                            <ul>
                                <% loop $FooterLinksCol3.Sort('Sort') %>
                                    <li>
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
                    <div class="nsw-footer__group">
                        <% if $FooterLinksCol4Title %>
                            <div class="nsw-footer__heading">
                                {$FooterLinksCol4Title.XML}
                            </div>
                        <% end_if %>
                        <% if $FooterLinksCol4 %>
                            <ul>
                                <% loop $FooterLinksCol4.Sort('Sort') %>
                                    <li>
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

            <% if $DisplayWelcomeToCountry %>
                <p>
                {$WelcomeToCountry.XML}
                </p>
                <% if $FooterContent == '' %>
                <hr>
                <% end_if %>
            <% end_if %>

            <% if $FooterContent %>
                <p>{$FooterContent.Plain.XML}</p>
                <hr>
            <% end_if %>


            <% if $FooterLinksSub %>
                <ul>
                    <% loop $FooterLinksSub.Sort('Sort') %>
                    <li>
                        <a href="{$LinkURL}" class="nsw-footer-links__link">
                            {$Title.XML}
                        </a>
                    </li>
                    <% end_loop %>
                </ul>
            <% end_if %>

            <% if $SocialLinks %>
                <ul class="wrth-social-links">
                    <% loop $SocialLinks.Sort('Sort') %>
                    <li>
                        <a href="{$LinkURL}" class="social-{$Title.LowerCase.XML}">
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
