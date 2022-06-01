<% if $MainNavigation_Menu %>

<nav class="nsw-main-nav js-mega-menu" id="main-nav" aria-label="<%t nswds.MAIN_MENU 'Main menu' %>">

    <div class="nsw-main-nav__header">
        <div class="nsw-main-nav__title"><%t nswds.MENU 'Menu' %></div>
        <button class="nsw-icon-button js-close-nav" type="button" aria-expanded="true">
            <% include nswds/Icon Icon_Icon='close' %>
            <span class="sr-only"><%t nswds.CLOSE_MENU 'Close Menu' %></span>
        </button>
    </div>

    <ul class="nsw-main-nav__list" data-level="1">

        <% loop $MainNavigation_Menu %>

        <li>

            <a href="{$Link}">
                <span>{$MenuTitle.XML}</span>
                <% if $Children %>
                <% include nswds/Icon Icon_Icon='keyboard_arrow_right' %>
                <% end_if %>
            </a>

            <% if $Children %>

            <div class="nsw-main-nav__sub-nav" id="sub-nav-{$ID}" role="region" aria-label="{$MenuTitle.XML} Submenu">

                <div class="nsw-main-nav__header">

                    <button class="nsw-icon-button nsw-icon-button--flex js-close-sub-nav" type="button" aria-expanded="true" aria-controls="subnav-{$ID}" aria-expanded="true">
                        <% include nswds/Icon Icon_Icon='keyboard_arrow_left' %>
                        <span><%t nswds.BACK 'Back' %><span class="sr-only"> <%t nswds.TO_PREVIOUS_MENU 'to previous menu' %></span></span>
                    </button>

                    <button class="nsw-icon-button js-close-nav" type="button" aria-expanded="true">
                        <% include nswds/Icon Icon_Icon='close' %>
                        <span class="sr-only"><%t nswds.CLOSE_MENU 'Close Menu' %></span>
                    </button>

                </div>

                <div class="nsw-main-nav__title">
                    <a href="{$Link}">
                        <span>{$MenuTitle.XML}</span>
                        <% include nswds/Icon Icon_Icon='east' %>
                    </a>
                </div>

                <% if $Abstract %>
                    <div class="nsw-main-nav__description">{$Abstract.XML}</div>
                <% end_if %>

                <ul class="nsw-main-nav__sub-list" data-level="2">

                    <% loop $Children %>

                    <li>

                        <a href="{$Link}">
                            <% include nswds/MainNavigation_Project_PageIcon PageIcon_Icon=$PageIcon %>
                            <span>{$MenuTitle.XML}</span>
                            <% if $Children %>
                            <% include nswds/Icon Icon_Icon='keyboard_arrow_right' %>
                            <% end_if %>
                        </a>

                        <% if $Children %>

                        <div class="nsw-main-nav__sub-nav" id="sub-nav-{$ID}" role="region" aria-label="<%t nswds.MENU_SUBMENU '{title} Submenu' title=$MenuTitle.XML %>">

                            <div class="nsw-main-nav__header">

                                <button type="button" class="nsw-icon-button nsw-icon-button--flex js-close-sub-nav" aria-controls="subnav-{$ID}" aria-expanded="true">
                                    <% include nswds/Icon Icon_Icon='keyboard_arrow_left' %>
                                    <span><%t nswds.BACK 'Back' %><span class="sr-only"> <%t nswds.TO_PREVIOUS_MENU 'to previous menu' %></span></span>
                                </button>

                                <button class="nsw-icon-button js-close-nav" type="button" aria-expanded="true">
                                    <% include nswds/Icon Icon_Icon='close' %>
                                    <span class="sr-only"><%t nswds.CLOSE_MENU 'Close Menu' %></span>
                                </button>

                            </div>

                            <div class="nsw-main-nav__title">
                                <a href="{$Link}">
                                    <span>{$MenuTitle.XML}</span>
                                </a>
                            </div>

                            <ul class="nsw-main-nav__sub-list" data-level="3">

                                <% loop $Children %>
                                <li>
                                    <a href="{$Link}">
                                        <span>{$MenuTitle.XML}</span>
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
