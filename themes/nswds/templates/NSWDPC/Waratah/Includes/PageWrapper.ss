<%-- this include holds scaffolding for main and side elements --%>

<% if $Top.IsLandingPage %>

    <%-- a landing page --%>
    <main id="content" class="nsw-section" data-page-type="1">
    <% include NSWDPC/Waratah/PageContent %>
    </main>

<% else_if $Top.HasSideElements %>

    <%-- a content page, sidebar on the right --%>
    <div class="nsw-container nsw-p-top-sm nsw-p-bottom-lg" data-page-type="3">
        <div class="nsw-page-layout">
            <main id="content" class="nsw-page-layout__main">
            <% include NSWDPC/Waratah/PageContent %>
            </main>
            <aside class="nsw-page-layout__sidebar nsw-page-layout__sidebar--desktop">
            <% include NSWDPC/Waratah/Sidebar %>
            </aside>
        </div>
    </div>

<% else %>

    <%-- default: a page with navigation, sidebar on the left --%>
    <div class="nsw-container nsw-p-top-sm nsw-p-bottom-lg" data-page-type="2">
        <div class="nsw-page-layout">

        <% if $SidebarNavigation(1) %>
            <% with $SidebarNavigation(1) %>
                <aside class="nsw-page-layout__sidebar nsw-page-layout__sidebar--desktop">
                    <% include NSWDPC/Waratah/SidebarNav Children=$Children, URLSegment=$URLSegment, Link=$Link, MenuTitle=$MenuTitle %>
                </aside>
            <% end_with %>
            <main id="content" class="nsw-page-layout__main">
                <% include NSWDPC/Waratah/PageContent %>
            </main>
        <% else %>
            <main id="content" class="nsw-page-layout__main">
                <% include NSWDPC/Waratah/PageContent %>
            </main>
            <aside class="nsw-page-layout__sidebar nsw-page-layout__sidebar--desktop"></aside>
        <% end_if %>

        </div>
    </div>

<% end_if %>
