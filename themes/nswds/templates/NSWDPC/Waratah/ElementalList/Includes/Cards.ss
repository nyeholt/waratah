<% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>
<% if $HTML %>
    {$HTML}
<% end_if %>
<% if $Elements.Elements %>
    <div class="nsw-grid">

        <% loop $Elements.Elements %>

            <div class="nsw-col {$Up.Up.ColumnClass($Up.OverrideColumns)}">
                <div class="nsw-card nsw-card--highlight<% if $Up.Brand %> nsw-card--{$Up.Brand.XML}<% end_if %>">
                    <% if $Up.Up.CardStyle == "title-image-abstract" %>
                        <% if $ContentImage %>
                        <div class="nsw-card__image">
                            <img src="{$ContentImage.FocusFillMax(600,400).URL}" alt="{$ContentImage.AltText.XML}" loading="lazy">
                        </div>
                        <% else_if $Image %>
                            <div class="nsw-card__image">
                                <img src="{$Image.FocusFillMax(600,400).URL}" alt="{$Image.AltText.XML}" loading="lazy">
                            </div>
                        <% end_if %>
                    <% end_if %>
                    <div class="nsw-card__content">
                        <div class="nsw-card__title">
                            <% if $ContentLink %>
                                <a href="{$ContentLink.LinkURL}">{$Title.XML}</a>
                            <% else_if $LinkTarget %>
                                <a href="{$LinkTarget.LinkURL}">{$Title.XML}</a>
                            <% else %>
                                {$Title.XML}
                            <% end_if %>
                        </div>
                        <% if $Up.Up.CardStyle == "title-abstract" || $Up.Up.CardStyle == "title-image-abstract" %>
                            <% if $HTML %>
                                <div class="nsw-card__copy">
                                    {$HTML}
                                </div>
                            <% end_if %>
                        <% end_if %>
                        <% if $ContentLink || $LinkTarget %>
                            <% include nswds/Icon Icon_Icon='east' %>
                        <% end_if %>
                    </div>
                </div>
            </div>
        <% end_loop %>
    </div>
<% end_if %>
