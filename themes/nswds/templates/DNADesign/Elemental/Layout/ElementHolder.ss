<% if $Parent.RenderElementDirectly %>

    <%-- elements that can render directly, parent is an ElementalArea --%>

    <div data-direct="1" data-side="{$Parent.IsSideArea}">
    {$Element}
    </div>

<% else_if $CurrentPage.IsLandingPage || $Parent.OwnerPage.IsLandingPage %>

    <%-- note:landing pages / home pages never render a sidebar element area, these are all the main elements --%>

    <section class="<% if $Background %>$Background<% end_if %><% if $StyleVariant %> $StyleVariant<% end_if %><% if $ExtraClass %> $ExtraClass<% end_if %>" id="{$Anchor}" data-type="{$ElementShortName}">

        <%-- landing page elements can have containers and backgrounds --%>
        <% if $AddContainer %><div class="nsw-container"><% end_if %>
            {$Element}
        <% if $AddContainer %></div><% end_if %>

    </section>

<% else %>

    <%-- any element not rendered directly,  not in a landing page --%>

    <div class="nsw-block<% if $StyleVariant %> $StyleVariant<% end_if %><% if $ExtraClass %> $ExtraClass<% end_if %>" id="{$Anchor}" data-type="{$ElementShortName}">
        {$Element}
    </div>

<% end_if %>
