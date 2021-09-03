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

<%-- where the Top Elemental Areas live --%>
<% include NSWDPC/Waratah/PageBanner %>

<% if $CurrentPage.Breadcrumbs.Count > 0 %>
<div class="nsw-container">
<% include nswds/Breadcrumbs Breadcrumbs_List=$CurrentPage.Breadcrumbs %>
</div>
<% end_if %>

{$Layout}

<% include nswds/Footer %>

<% include FeedbackAssist %>

</body>
</html>
