<% if $Children %>

<div class="nsw-main-nav__sub-nav" id="sub-nav-{$ID}" role="region" aria-label="<%t nswds.MENU_SUBMENU '{title} Submenu' title=$MenuTitle.XML %>">

    <div class="nsw-main-nav__header">

        <button type="button" class="nsw-icon-button nsw-icon-button--flex js-close-sub-nav" aria-controls="sub-nav-{$ID}" aria-expanded="true">
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
