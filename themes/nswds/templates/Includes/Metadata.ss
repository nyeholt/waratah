
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>{$Title.XML} - {$SiteConfig.Title.XML}</title>
    <% if $Priority == "-1" %><meta name="robots" content="noindex, nofollow"><% end_if %>
    <% if $MetaDescription %><meta name="description" content=="{$MetaDescription.XML}"><% end_if %>
    <meta property="og:type" content="website" />
    <meta property="og:url" content="<% if $CurrentPage.InSection(home) %>{$BaseHref}<% else %>{$AbsoluteLink}<% end_if %>">
    <meta property="og:title" content="{$Title.XML}">
    <% if $MetaDescription %><meta property="og:description" content="{$MetaDescription.XML}"><% end_if %>
    <% if $Image %><meta property="og:image" content="{$Image.FocusFillMax(1200,630).AbsoluteLink}">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="630"><% end_if %>
    <meta name="twitter:card" content="summary">
    <meta name="twitter:site" content="{$SiteConfig.Title}<% if $SiteConfig.Tagline %> - {$SiteConfig.Tagline}<% end_if %>">
    <meta name="twitter:url" content="<% if $CurrentPage.InSection(home) %>{$BaseHref}<% else %>{$AbsoluteLink}<% end_if %>">
    <meta name="twitter:title" content="{$Title.XML}">
    <% if $MetaDescription %><meta name="twitter:description" content="{$MetaDescription.XML}"><% end_if %>
    <% if $Image %><meta name="twitter:image" content="{$Image.FocusFillMax(640,640).AbsoluteLink}"><% end_if %>
