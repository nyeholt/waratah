<div class="nsw-col nsw-col-<% if $ColumnWidth %>$ColumnWidth.XML<% else %>md-4<% end_if %>">
    <div class="nsw-content-block">
        <div class="nsw-content-block__content">
            <h2 class="nsw-content-block__title">
                <a href="{$LinkURL}" class="nsw-content-block__link">{$Title.XML}</a>
            </h2>
            <p class="nsw-content-block__copy">
            <% if $Description %>
                {$Description}
            <% else_if $Content %>
                {$Content}
            <% end_if %>
            </p>
            <% if $Listing %>
            <ul class="nsw-content-block__list">
                <% loop $Listing %>
                <li><a href="{$Link}">{$Title.XML}</a></li>
                <% end_loop %>
            </ul>
            <% end_if %>
            <% if $Link %>
            <div class="nsw-content-block__link"><a href="$Link"><%t nswds.VIEW_MORE 'View more' %></a></div>
            <% end_if %>
        </div>
        <% if $Image || $Icon %>
        <div class="nsw-content-block__image-area">
            <% if $Image %>
                <% if $ImageWidth || $ImageHeight %>
                    <% if not $ImageHeight %>
                        {$Image.ScaleWidth($ImageWidth)}
                    <% else %>
                        {$Image.Fill($ImageWidth, $ImageHeight)}
                    <% end_if %>
                <% else %>
                     {$Image.ScaleWidth(400)}
                <% end_if %>
            <% else_if $Icon %>
                <div class="nsw-content-block__icon">
                {$Icon.RAW}
                </div>
            <% end_if %>
        </div>
        <% end_if %>
    </div>
</div>
