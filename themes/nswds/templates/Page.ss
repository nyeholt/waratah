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

    <% include SkipToNav %>

    <% include Masthead %>

    <% include Header %>

    <% include MainNavigation %>

    <% include Breadcrumbs %>

    <main id="main-content">
        <div class="nsw-section--white">
            <div class="nsw-container">
                <div class="nsw-page-layout">
                    <div class="nsw-page-layout__main">
                        <% if $IsLandingPage %>
                            <article>
                                $Layout
                            </article>
                        <% else %>
                            <% if $Menu(2) %><div class="nsw-grid"><% end_if %>
                            <% if $Menu(2) %>
                                <% include Sidebar %>
                            <% end_if %>
                            <article class="<% if $Menu(2) %>nsw-col nsw-col--two-thirds <% end_if %>">
                                $Layout
                            </article>
                            <% if $Menu(2) %></div><% end_if %>
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
