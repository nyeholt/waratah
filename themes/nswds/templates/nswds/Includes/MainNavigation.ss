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

            <% include nswds/MainNavigation_Level2 MainNavigation_Allow_Level3=$Up.MainNavigation_Allow_Level3 %>

        </li>

        <% end_loop %>

    </ul>


    <% include nswds/MainNavigation_Project_Footer %>

</nav>

<% end_if %>
