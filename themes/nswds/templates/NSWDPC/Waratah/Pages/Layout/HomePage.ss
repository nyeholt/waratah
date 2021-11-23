<%-- Homepage: this page layout excludes PageIntro --%>
<main id="content" data-page-type="1.1">
    <% if $Top.IsLandingPage %><section class="nsw-section"><% end_if %>
    <% include NSWDPC/Waratah/PageElemental %>
    <%-- allow inclusion of any static non elemental content in a project on a per-layout basis --%>
    <% include NSWDPC/Waratah/PerLayoutContent %>
    <% include NSWDPC/Waratah/PageForm %>
    <% if $Top.IsLandingPage %></section><% end_if %>
    </section>
</main>
