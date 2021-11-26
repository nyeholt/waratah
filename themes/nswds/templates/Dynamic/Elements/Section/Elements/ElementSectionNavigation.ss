<% if $SectionNavigation %>

    <% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>

    <div class="nsw-grid">
        <% loop $SectionNavigation.Sort('Sort') %>
            <div class="nsw-col<% if $Up.Up.Columns > 1 %> {$Up.Up.Columns}<% end_if %>">
                <div class="nsw-card nsw-card--headline<% if $Up.Brand %> nsw-card--{$Up.Brand.XML}<% end_if %>">
                    <div class="nsw-card__content">
                        <h2 class="nsw-card__title">
                            <a href="{$Link}" class="nsw-card__link">{$Title.XML}</a>
                        </h2>
                        <% if $Up.Up.CardStyle == "title-abstract" || $Up.Up.CardStyle == "title-image-abstract" %>
                            <% if $Description %>
                                <p class="nsw-card__copy">
                                    {$Description.XML}
                                </p>
                            <% else_if $Abstract %>
                                <p class="nsw-card__copy">
                                    {$Abstract.XML}
                                </p>
                            <% end_if %>
                        <% end_if %>
                        <i class="material-icons nsw-material-icons nsw-card__icon" focusable="false" aria-hidden="true">east</i>
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
