<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta charset="utf-8">
    <% base_tag %>
    <% include NSWDPC/Waratah/Metadata %>
    <% include NSWDPC/Waratah/Favicon %>
</head>

<body class="nsw-body-content">

<% include nswds/SkipToNav %>

<% include nswds/GlobalAlert %>

<% include nswds/Masthead %>

<% include nswds/Header %>

<% include NSWDPC/Waratah/MainNavigation %>

<% if not $InSection(home) && not $Top.HideBreadcrumbs && $Top.Breadcrumbs %>
<% include nswds/Breadcrumbs Breadcrumbs_List=$Top.Breadcrumbs, Breadcrumbs_IncludeContainer=1 %>
<% end_if %>


<div class="nsw-container nsw-p-top-sm nsw-p-bottom-lg" data-page-type="2.sec">
    <div class="nsw-page-layout">


        <aside class="nsw-page-layout__sidebar nsw-page-layout__sidebar--desktop">

            <% if $CurrentMember %>
            <nav class="nsw-sidenav" aria-labelledby="private-links">

                <div class="nsw-sidenav__header">
                    <h2 id="private-links" class="nsw-sidenav__heading">Menu</h2>
                </div>

                <ul class="nsw-sidenav__list nsw-sidenav__list--level-1">
                    <% if $ProfileProvider %>
                        <% with $ProfileProvider %>
                            <li class="nsw-sidenav__list-item"><a class="nsw-sidenav__link" href="{$EditProfileLink}"><%t nswds.Profile 'Profile' %></a></li>
                        <% end_with %>
                    <% end_if %>
                    <li class="nsw-sidenav__list-item">
                        <a class="nsw-sidenav__link" href="{$Link('changepassword')}"><%t SilverStripe\\Security\\Member.BUTTONCHANGEPASSWORD 'Change password' %></a>
                    </li>
                    <li class="nsw-sidenav__list-item">
                        <a class="nsw-sidenav__link" href="{$Link('logout')}"><%t SilverStripe\\Security\\Member.BUTTONLOGOUT 'Log out' %></a>
                    </li>
                </ul>

            </nav>
            <% else %>
            <nav class="nsw-sidenav" aria-labelledby="public-links">

                <div class="nsw-sidenav__header">
                    <h2 id="public-links" class="nsw-sidenav__heading">Menu</h2>
                </div>

                <ul class="nsw-sidenav__list nsw-sidenav__list--level-1">
                    <li class="nsw-sidenav__list-item"><a class="nsw-sidenav__link<% if $Action =='login' %> is-current<% end_if %>" href="{$Link('login')}"><%t nswds.SIGN_IN 'Sign in' %></a></li>
                    <li class="nsw-sidenav__list-item"><a class="nsw-sidenav__link<% if $Action == 'lostpassword' %> is-current<% end_if %>" href="{$Link('lostpassword')}"><%t nswds.LOST_PASSWORD 'Lost password' %></a></li>
                    <% if $RegistrationProvider %>
                        <% with $RegistrationProvider %>
                            <li class="nsw-sidenav__list-item"><a class="nsw-sidenav__link" href="{$Link}"><%t nswds.REGISTER 'Register' %></a></li>
                        <% end_with %>
                    <% end_if %>
                </ul>

            </nav>
            <% end_if %>
        </aside>

        <main id="content" class="nsw-page-layout__main">

            <div class="nsw-block">

                <% include NSWDPC/Waratah/PageContentTitle %>

                {$Layout}

            </div>

        </main>

    </div>
</div>

<% include nswds/Footer %>

</body>
</html>
