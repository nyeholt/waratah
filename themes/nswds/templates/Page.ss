<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta charset="utf-8">
    <% include NSWDPC/Waratah/GTMHead %>
    <% base_tag %>
    <% include NSWDPC/Waratah/Metadata %>
    <% include NSWDPC/Waratah/Favicon %>
</head>

<body class="nsw-body-content">

<% include NSWDPC/Waratah/GTMBody %>

<% include nswds/SkipToNav %>

<% include nswds/GlobalAlert %>

<% include nswds/Masthead %>

<% include nswds/Header %>

<% include NSWDPC/Waratah/MainNavigation %>

<%-- where the Top Elemental Areas live --%>
<% include NSWDPC/Waratah/PageBanner %>

<% if not $HideBreadcrumbs && $CurrentPage.Breadcrumbs %>
<div class="nsw-container">
<% include nswds/Breadcrumbs Breadcrumbs_List=$CurrentPage.Breadcrumbs %>
</div>
<% end_if %>

{$Layout}

<% include nswds/Footer %>

<% include FeedbackAssist %>

</body>
</html>
