<% if $Subtype == 'none' || not $Subtype %>

    <section class="{$ElementStyles}" data-listelement-count="{$Elements.Elements.Count}">
        <div class="nsw-container">
            <div class="nsw-grid">
                <div class="col-12">

                    <% if $ShowTitle && $Title %>
                        <div>
                            <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
                                {$Title}
                            </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
                        </div>
                    <% end_if %>

                    <% if $LinkTarget %>
                        <div>
                            <a href="{$LinkTarget.LinkURL}" class="nsw-button">{$LinkTarget.Title}</a>
                        </div>
                    <% end_if %>

                    {$Elements}
                </div>
            </div>
        </div>
    </section>

<% else_if $Subtype == 'nsw-four-col-cards' %>
    <% include ElementList_NSWFourColCards %>

<% else_if $Subtype == 'nsw-three-col-card-grid' %>
    <% include ElementList_NSWThreeColCards %>

<% else_if $Subtype == 'nsw-four-col-ctas' %>
    <% include ElementList_NSWFourColCTAs %>

<% else_if $Subtype == 'nsw-two-col-ctas' %>
    <% include ElementList_NSWTwoColCTAs %>

<% else_if $Subtype == 'nsw-tab-panel-secondary' %>
    <% include ElementList_NSWTabPanelSecondary %>

<% else_if $Subtype == 'nsw-tab-panel--horizontal' %>
    <% include ElementList_NSWTabPanel %>

<% else_if $Subtype == 'nsw-tab-panel--vertical' %>
    <% include ElementList_NSWTabPanel %>

<% else_if $Subtype == 'accordion' %>
    <% include ElementList_accordion %>

<% end_if %>
