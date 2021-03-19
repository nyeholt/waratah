<footer class="nsw-footer">
    <% with $SiteConfig %>
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
                                    <% loop $FooterLinksCol1 %>
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
                                    <% loop $FooterLinksCol2 %>
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
                                    <% loop $FooterLinksCol3 %>
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
                                    <% loop $FooterLinksCol4 %>
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
                    {$FooterContent}
                <% end_if %>
                <hr>
                <% if $FooterLinksSub %>
                <% end_if %>
                <ul class="nsw-footer-links">
                    <% loop $FooterLinksSub %>
                    <li class="nsw-footer-links__item">
                        <a href="{$LinkURL}" class="nsw-footer-links__link">
                            {$Title.XML}
                        </a>
                    </li>
                    <% end_loop %>
                </ul>
                <div class="nsw-footer__info">
                    <p class="nsw-footer__copyright"><% if $CopyrightOwner %>{$CopyrightOwner.XML} <% else %>Copyright<% end_if %> &copy; {$Now.Year}</p>
                </div>
            </div>
        </div>
    <% end_with %>
</footer>
