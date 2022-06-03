<div class="nsw-grid">
<% loop $Items %>
    <% if $Up.Columns %>
    <div class="nsw-col<% if $Up.Columns %> {$Up.Columns}<% end_if %>">
    <% else %>
    <div class="nsw-col nsw-col-xs-12 nsw-col-sm-6 nsw-col-md-4 nsw-col-lg-3">
    <% end_if %>
        <div class="nsw-card nsw-card--highlight<% if $Up.Brand %> nsw-card--{$Up.Brand.XML}<% end_if %>">
            <% if $Image %>
                <div class="nsw-card__image">
                    <img src="{$Image.FocusFillMax(400,200).URL}" alt="{$Image.AltText.XML}">
                </div>
            <% end_if %>
            <div class="nsw-card__content">
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
                <div class="nsw-card__title">
                    <a href="{$Link}" title="More information about $Title">{$MenuTitle.XML}</a>
                </div>
                <% if $Abstract %>
                    <div class="nsw-card__copy">{$Abstract.XML}</div>
                <% end_if %>
                <% include nswds/Icon Icon_Icon='east' %>
            </div>
        </div>
    </div>
<% end_loop %>
</div>
