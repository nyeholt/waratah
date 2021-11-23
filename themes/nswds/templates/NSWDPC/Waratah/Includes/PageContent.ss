<%-- Page Content: render all page content, for landing pages wrapped in a nsw-section --%>
<% if $Top.IsLandingPage %><section class="nsw-section"><% end_if %>

<% include NSWDPC/Waratah/PageIntro %>

<%-- elements handle their own container-isation --%>
<% include NSWDPC/Waratah/PageElemental %>

<%-- allow inclusion of any static non elemental content in a project on a per-layout basis --%>
<% include NSWDPC/Waratah/PerLayoutContent %>

<% include NSWDPC/Waratah/PageForm %>

<% if $Top.IsLandingPage %></section><% end_if %>
