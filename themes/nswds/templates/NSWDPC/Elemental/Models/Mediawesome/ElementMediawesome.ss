<% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>
<% if $HTML %>
    {$HTML}
<% end_if %>
<div class="nsw-grid">
    <% loop $RecentPosts %>
        <div class="nsw-col<% if $Up.Columns > 1 %> {$Up.Columns}<% end_if %>">
            <div class="nsw-card nsw-card--highlight<% if $Up.Brand %> nsw-card--{$Up.Brand.XML}<% end_if %>">
                <% if $Image %>
                    <div class="nsw-card__image">
                        <img src="{$Image.FocusFillMax(400,200).URL}" alt="{$Image.AltText.XML}">
                    </div>
                <% end_if %>
                <div class="nsw-card__content">
                    <div class="nsw-card__title">
                        <a href="{$Link}" title="More information about $Title">{$MenuTitle.XML}</a>
                    </div>
                    <% if $MediaAttributes %>
                        <% loop $MediaAttributes %>
                            <% if $Join.Content %>
                                <div class="nsw-card__tag">{$Join.Content}</div>
                            <% end_if %>
                        <% end_loop %>
                    <% end_if %>
                    <div class="nsw-card__date">
                        <time datetime="{$Date}">{$Date.Full}</time>
                    </div>
                    <% if $Tags %>
                        <% loop $Tags.Limit(3) %>
                        <div class="nsw-card__tag">{$Title.XML}</div>
                        <% end_loop %>
                    <% end_if %>
                    <% if $Abstract %>
                        <div class="nsw-card__copy">{$Abstract.XML}</div>
                    <% end_if %>
                    <% include nswds/Icon Icon_Icon='east' %>
                </div>
            </div>
        </div>
    <% end_loop %>
</div>
<div>
    <a href="$MediaHolder.Link" class="nsw-button nsw-button--dark" title="{$MediaHolderLinkTitle.XML}">{$MediaHolderLinkTitle.XML}</a>
</div>
