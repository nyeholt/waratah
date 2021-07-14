<% if $ShowTitle && $Title %>
    <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
        {$Title.XML}
    </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
<% end_if %>
<% if $HTML %>
    {$HTML}
<% end_if %>
<% if $Elements.Elements %>
    <div class="nsw-grid">
        <% loop $Elements.Elements %>
            <div class="nsw-col<% if $Up.Up.Columns > 1 %> {$Up.Up.Columns}<% end_if %>">
                <div class="nsw-card nsw-card--headline">
                    <div class="nsw-card__content">
                        <h2 class="nsw-card__title">
                            <% if $ContentLink %><a href="{$ContentLink.LinkURL}" class="nsw-card__link"><% end_if %>
                                {$Title.XML}
                            <% if $ContentLink %></a><% end_if %>
                        </h2>
                        <% if $Up.Up.CardStyle == "title-abstract" || $Up.Up.CardStyle == "title-image-abstract" %>
                            <% if $HTML %>
                                <div class="nsw-card__copy">
                                    {$HTML}
                                </div>
                            <% end_if %>
                        <% end_if %>
                        <% if $ContentLink %><i class="material-icons nsw-material-icons nsw-card__icon" focusable="false" aria-hidden="true">east</i><% end_if %>
                    </div>
                    <% if $Up.Up.CardStyle == "title-image-abstract" %>
                        <% if $Image %>
                            <div class="nsw-card__image-area">
                                <img src="$Image.FocusFillMax(600,400).URL" alt="{$Image.Title.XML}" class="nsw-card__image">
                            </div>
                        <% end_if %>
                    <% end_if %>
                </div>
            </div>
        <% end_loop %>
    </div>
<% end_if %>
