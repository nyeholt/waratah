<!doctype html>
<html lang="en" class="no-js">
<head>
    <% base_tag %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>$Title</title>
    <meta name="robots" content="noindex" />
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href=".../../favicon.ico">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>

<body class="$CLassName">

    <nav class="nsw-skipto nsw-container" aria-label="Skip to links">
        <a class="nsw-skipto__link" href=""><span>Skip to navigation</span></a>
        <a class="nsw-skipto__link" href=""><span>Skip to content</span></a>
    </nav>


    <div class="nsw-masthead">
        <div class="nsw-container">
            <p>A NSW Government website</p>
        </div>
    </div>

<% include Header %>

<nav id="main-navigation" class="nsw-navigation js-mega-menu" aria-label="Main menu">
  <div class="nsw-navigation__header">
    <h2 id="nsw-navigation">Menu</h2>
    <button type="button" class="nsw-navigation__close js-close-navigation" aria-expanded="true">
      <i class="material-icons nsw-material-icons" focusable="false" aria-hidden="true">close</i>
      <span class="sr-only">Close Menu</span>
    </button>
  </div>


    <ul class="nsw-navigation__list">

        <% loop $Menu(1) %>

            <li class="nsw-navigation__list-item">

                <a href="{$Link}" class="nsw-navigation__link">
                    <span class="nsw-navigation__link-text">{$MenuTitle.XML}</span>
                    <% if $Children %>
                        <i class="material-icons nsw-material-icons nsw-navigation__link-icon" focusable="false" aria-hidden="true">keyboard_arrow_right</i>
                    <% end_if %>
                </a>

                <% if $Children %>

                    <div class="nsw-subnavigation" id="subnav-{$ID}" role="region"aria-label="{$MenuTitle.XML} Submenu">

                        <div class="nsw-subnavigation__header">

                            <button type="button" class="nsw-subnavigation__back-btn js-close-subnav" aria-controls="subnav-{$ID}" aria-expanded="true">
                                <i class="material-icons nsw-material-icons nsw-material-icons--rotate-180" focusable="false" aria-hidden="true">keyboard_arrow_right</i>
                                <span>Back<span class="sr-only"> to previous menu</span></span>
                            </button>

                            <button type="button" class="nsw-navigation__close js-close-navigation" aria-expanded="true">
                                <i class="material-icons nsw-material-icons" focusable="false" aria-hidden="true">close</i>
                                <span class="sr-only">Close Menu</span>
                            </button>

                        </div>

                        <h2 class="nsw-subnavigation__title">
                            <a href="{$Link}" class="nsw-subnavigation__title-link">
                                <span>{$MenuTitle.XML}</span>
                                <i class="material-icons nsw-material-icons nsw-card__icon" focusable="false" aria-hidden="true">east</i>
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
                                        <% if $Children %>
                                            <i class="material-icons nsw-material-icons nsw-navigation__link-icon" focusable="false" aria-hidden="true">keyboard_arrow_right</i>
                                        <% end_if %>
                                    </a>

                                    <% if $Children %>

                                        <div class="nsw-subnavigation" id="subnav-{$ID}" role="region" aria-label="{$MenuTitle.XML} Submenu">

                                            <div class="nsw-subnavigation__header">

                                                <button type="button" class="nsw-subnavigation__back-btn js-close-subnav" aria-controls="subnav-{$ID}" aria-expanded="true">
                                                    <i class="material-icons nsw-material-icons nsw-material-icons--rotate-180" focusable="false" aria-hidden="true">keyboard_arrow_right</i>
                                                    <span>Back<span class="sr-only"> to previous menu</span></span>
                                                </button>

                                                <button type="button" class="nsw-navigation__close js-close-navigation" aria-expanded="true">
                                                    <i class="material-icons nsw-material-icons" focusable="false" aria-hidden="true">close</i>
                                                    <span class="sr-only">Close Menu</span>
                                                </button>

                                            </div>

                                            <h2 class="nsw-subnavigation__title">
                                                <a href="{$Link}" class="nsw-subnavigation__title-link">
                                                    <span>{$MenuTitle.XML}</span>
                                                    <i class="material-icons nsw-material-icons nsw-card__icon" focusable="false" aria-hidden="true">east</i>
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
</nav>

<% include Breadcrumbs %>


<main>
  <div class="nsw-section--white">
    <div class="nsw-container">
      <div class="nsw-page-layout">


          <div class="nsw-page-layout__main">

                <% if $Menu(2) %>
                <div class="nsw-grid">
                <% end_if %>

                    <% if $Menu(2) %>

                    <aside class="nsw-col nsw-col--third">



                    	    <nav class="nsw-sidenav" aria-labelledby="{$URLSegment} side navigation">

                                <% with $Level(1) %>

                                    <div class="nsw-sidenav__header">
                                        <h2 id="{$URLSegment}" class="nsw-sidenav__heading">
                                        <a href="$Link" class="nsw-sidenav__heading-link">{$MenuTitle.XML}</a></h2>
                                    </div>

                                    <% if LinkOrSection = section %>

                                        <ul class="nsw-sidenav__list nsw-sidenav__list--level-1">


                                                <% loop $Children %>

                                                    <li class="nsw-sidenav__list-item<% if $Children %> has-active-children<% end_if %>">

                                                        <a href="{$Link}" class="nsw-sidenav__link<% if $isCurrent %> is-current<% end_if %>"<% if $isCurrent %> aria-current="page"<% end_if %>>
                                                            {$MenuTitle.XML}
                                                        </a>

                                                        <ul class="nsw-sidenav__list nsw-sidenav__list--level-2">

                                                            <% loop $Children %>

                                                                <li class="nsw-sidenav__list-item<% if $Children %> has-active-children<% end_if %>">

                                                                    <a href="{$Link}" class="nsw-sidenav__link<% if $isCurrent %> is-current<% end_if %>"<% if $isCurrent %> aria-current="page"<% end_if %>>
                                                                        {$MenuTitle.XML}
                                                                    </a>

                                                                    <ul class="nsw-sidenav__list nsw-sidenav__list--level-3">

                                                                        <% loop $Children %>

                                                                            <li class="nsw-sidenav__list-item<% if $Children %> has-active-children<% end_if %>">

                                                                                <a href="{$Link}" class="nsw-sidenav__link<% if $isCurrent %> is-current<% end_if %>"<% if $isCurrent %> aria-current="page"<% end_if %>>
                                                                                    {$MenuTitle.XML}
                                                                                </a>

                                                                                <ul class="nsw-sidenav__list nsw-sidenav__list--level-4">

                                                                                    <% loop $Children %>

                                                                                        <li class="nsw-sidenav__list-item<% if $Children %> has-active-children<% end_if %>">

                                                                                            <a href="{$Link}" class="nsw-sidenav__link<% if $isCurrent %> is-current<% end_if %>"<% if $isCurrent %> aria-current="page"<% end_if %>>
                                                                                                {$MenuTitle.XML}
                                                                                            </a>

                                                                                        </li>

                                                                                    <% end_loop %>

                                                                                </ul>

                                                                            </li>

                                                                        <% end_loop %>

                                                                    </ul>

                                                                </li>

                                                            <% end_loop %>

                                                        </ul>

                                                    </li>

                                                <% end_loop %>




                                        </ul>


                                    <% end_if %>



                                <% end_with %>


                        	</nav>






        </aside>

                    <% end_if %>



                    <section class="<% if $Menu(2) %>nsw-col nsw-col--two-thirds <% end_if %>nsw-wysiwyg-content">

                        $Layout

                    </section>

                <% if $Menu(2) %>
                </div>
                <% end_if %>

          </div>


      </div>
    </div>
  </div>
</main>

<% include Footer %>

<% include SVGSprite %>


</body>
</html>
