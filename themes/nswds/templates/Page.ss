<!doctype html>
<html lang="en" class="no-js">
<head>
    <% base_tag %>
    <% include NSWDPC/Waratah/Metadata %>
    <% include NSWDPC/Waratah/Favicon %>
    <% include NSWDPC/Waratah/GTMHead %>
</head>

<body class="nsw-body-content">

<% include nswds/SkipToNav %>

<% include nswds/GlobalAlert %>

<% include nswds/Masthead %>

<% include nswds/Header %>

<% include NSWDPC/Waratah/MainNavigation %>

<% include NSWDPC/Waratah/PageBanner %>

<div class="nsw-container">
<% include nswds/Breadcrumbs Breadcrumbs_List=$CurrentPage.Breadcrumbs %>
</div>

{$Layout}

<% include nswds/Footer %>

<% include FeedbackAssist %>

</body>
</html>
