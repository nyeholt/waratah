<% if $MainNavigation_Menu %>

<nav id="main-navigation" class="nsw-navigation js-mega-menu" aria-label="<%t nswds.MAIN_MENU 'Main menu' %>">

    <div class="nsw-navigation__header">
        <h2 id="nsw-navigation"><%t nswds.MENU 'Menu' %></h2>
        <button type="button" class="nsw-navigation__close js-close-navigation" aria-expanded="true">
            <% include nswds/Icon Icon_Icon='close' %>
            <span class="sr-only"><%t nswds.CLOSE_MENU 'Close Menu' %></span>
        </button>
    </div>

    <ul class="nsw-navigation__list">

        <% loop $MainNavigation_Menu %>

        <li class="nsw-navigation__list-item">

            <a href="{$Link}" class="nsw-navigation__link">
                <span class="nsw-navigation__link-text">{$MenuTitle.XML}</span>
                <% if $Children %>
                <% include nswds/Icon Icon_Icon='keyboard_arrow_down', Icon_IconExtraClass='nsw-navigation__link-icon' %>
                <% end_if %>
            </a>

            <% if $Children %>

            <div class="nsw-subnavigation" id="subnav-{$ID}" role="region" aria-label="{$MenuTitle.XML} Submenu">

                <div class="nsw-subnavigation__header">

                    <button type="button" class="nsw-subnavigation__back-btn js-close-subnav" aria-controls="subnav-{$ID}" aria-expanded="true">
                        <% include nswds/Icon Icon_Icon='keyboard_arrow_right', Icon_IconExtraClass='nsw-material-icons--rotate-180' %>
                        <span><%t nswds.BACK 'Back' %><span class="sr-only"> <%t nswds.TO_PREVIOUS_MENU 'to previous menu' %></span></span>
                    </button>

                    <button type="button" class="nsw-navigation__close js-close-navigation" aria-expanded="true">
                        <% include nswds/Icon Icon_Icon='close' %>
                        <span class="sr-only"><%t nswds.CLOSE_MENU 'Close Menu' %></span>
                    </button>

                </div>

                <h2 class="nsw-subnavigation__title">
                    <a href="{$Link}" class="nsw-subnavigation__title-link">
                        <span>{$Title.XML}</span>
                        <% include nswds/Icon Icon_Icon='east' %>
                    </a>
                </h2>

                <% if $Abstract %>
                    <p class="nsw-subnavigation__description">{$Abstract.XML}</p>
                <% end_if %>

                <ul class="nsw-subnavigation__list">

                    <% loop $Children %>

                    <li class="nsw-subnavigation__list-item">

                        <a href="{$Link}" class="nsw-subnavigation__link">
                            <% include nswds/MainNavigation_Project_PageIcon PageIcon_Icon=$PageIcon %>
                            <span class="nsw-navigation__link-text">{$MenuTitle.XML}</span>
                            <% if $Children %>
                            <% include nswds/Icon Icon_Icon='keyboard_arrow_right', Icon_IconExtraClass='nsw-navigation__link-icon' %>
                            <% end_if %>
                        </a>

                        <% if $Children %>

                        <div class="nsw-subnavigation" id="subnav-{$ID}" role="region" aria-label="<%t nswds.MENU_SUBMENU '{title} Submenu' title={$MenuTitle.XML} %>">

                            <div class="nsw-subnavigation__header">

                                <button type="button" class="nsw-subnavigation__back-btn js-close-subnav" aria-controls="subnav-{$ID}" aria-expanded="true">
                                    <% include nswds/Icon Icon_Icon='keyboard_arrow_right', Icon_IconExtraClass='nsw-material-icons--rotate-180' %>
                                    <span><%t nswds.BACK 'Back' %><span class="sr-only"> <%t nswds.TO_PREVIOUS_MENU 'to previous menu' %></span></span>
                                </button>

                                <button type="button" class="nsw-navigation__close js-close-navigation" aria-expanded="true">
                                    <% include nswds/Icon Icon_Icon='close' %>
                                    <span class="sr-only"><%t nswds.CLOSE_MENU 'Close Menu' %></span>
                                </button>

                            </div>

                            <h2 class="nsw-subnavigation__title">
                                <a href="{$Link}" class="nsw-subnavigation__title-link">
                                    <span>{$Title.XML}</span>
                                    <% include nswds/Icon Icon_Icon='east' %>
                                </a>
                            </h2>

                            <% if $Abstract %>
                                <p class="nsw-subnavigation__description">{$Abstract.XML}</p>
                            <% end_if %>

                            <ul class="nsw-subnavigation__list">

                                <% loop $Children %>
                                <li class="nsw-subnavigation__list-item">
                                    <a href="{$Link}" class="nsw-subnavigation__link">
                                        <span class="nsw-navigation__link-text">{$MenuTitle.XML}</span>
                                    </a>
                                </li>
                                <% end_loop %>

                            </ul>

                        </div>

                        <% end_if %>
                    </li>

                    <% end_loop %>

                </ul>

            </div>

            <% end_if %>

        </li>

        <% end_loop %>

    </ul>


    <% include nswds/MainNavigation_Project_Footer %>

</nav>

<% end_if %>
