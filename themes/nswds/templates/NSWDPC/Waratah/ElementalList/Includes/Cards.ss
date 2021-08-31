<% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>
<% if $HTML %>
    {$HTML}
<% end_if %>
<% if $Elements.Elements %>
    <div class="nsw-grid">

        <% loop $Elements.Elements %>

            <div class="nsw-col {$Up.Up.ColumnClass($Up.OverrideColumns)}">
                <div class="nsw-card nsw-card--headline">
                    <div class="nsw-card__content">
                        <h2 class="nsw-card__title">
                            <% if $ContentLink %>
                                <a href="{$ContentLink.LinkURL}" class="nsw-card__link">{$Title.XML}</a>
                            <% else_if $LinkTarget %>
                                <a href="{$LinkTarget.LinkURL}" class="nsw-card__link">{$Title.XML}</a>
                            <% else %>
                                {$Title.XML}
                            <% end_if %>
                        </h2>
                        <% if $Up.Up.CardStyle == "title-abstract" || $Up.Up.CardStyle == "title-image-abstract" %>
                            <% if $HTML %>
                                <div class="nsw-card__copy">
                                    {$HTML}
                                </div>
                            <% end_if %>
                        <% end_if %>
                        <% if $ContentLink || $LinkTarget %>
                            <% include nswds/Icon Icon_Icon='east', Icon_IconExtraClass='nsw-card__icon' %>
                        <% end_if %>
                    </div>
                    <% if $Up.Up.CardStyle == "title-image-abstract" %>
                        <% if $Image %>
                            <div class="nsw-card__image-area">
                                <img src="$Image.FocusFillMax(600,400).URL" alt="{$Image.AltText.XML}" class="nsw-card__image">
                            </div>
                        <% end_if %>
                    <% end_if %>
                </div>
            </div>
        <% end_loop %>
    </div>
<% end_if %>
