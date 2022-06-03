<% if $SectionNavigation %>

    <% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>

    <div class="nsw-grid">
        <% loop $SectionNavigation.Sort('Sort') %>
            <div class="nsw-col<% if $Up.Up.Columns > 1 %> {$Up.Up.Columns}<% end_if %>">
                <div class="nsw-card nsw-card--highlight<% if $Up.Brand %> nsw-card--{$Up.Brand.XML}<% end_if %>">
                    <% if $Up.Up.CardStyle == "title-image-abstract" %>
                        <% if $Image %>
                            <div class="nsw-card__image">
                                <img src="{$Image.FocusFillMax(600,400).URL}" alt="{$Image.AltText.XML}">
                            </div>
                        <% end_if %>
                    <% end_if %>
                    <div class="nsw-card__content">
                        <div class="nsw-card__title">
                            <a href="{$Link}">{$Title.XML}</a>
                        </div>
                        <% if $Up.Up.CardStyle == "title-abstract" || $Up.Up.CardStyle == "title-image-abstract" %>
                            <% if $Description %>
                                <div class="nsw-card__copy">
                                    {$Description.XML}
                                </div>
                            <% else_if $Abstract %>
                                <div class="nsw-card__copy">
                                    {$Abstract.XML}
                                </div>
                            <% end_if %>
                        <% end_if %>
                        <% include nswds/Icon Icon_Icon='east' %>
                    </div>
                </div>
            </div>
        <% end_loop %>
    </div>


<% end_if %>
