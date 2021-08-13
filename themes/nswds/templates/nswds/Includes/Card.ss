<div class="nsw-col<% if $ColumnOptions %> $ColumnOptions.XML<% else %> nsw-col-md-4<% end_if %>">
    <div class="nsw-card nsw-card--headline<% if not $IncludeHeadline %> nsw-card--content<% end_if %>">
        <div class="nsw-card__content">
            <h2 class="nsw-card__title">
                <a href="{$LinkURL}" class="nsw-card__link">{$Title.XML}</a>
            </h2>
            <% if $Tag %>
                <p class="nsw-card__tag">{$Tag.XML}</p>
            <% end_if %>
            <% if $Date %>
                <p class="nsw-card__date">
                    <time datetime="{$Date.Format('yyyy-MM-dd')}">{$Date.Nice}</time>
                </p>
            <% end_if %>
            <p class="nsw-card__copy">
            <% if $Description %>
                {$Description}
            <% else_if $Content %>
                {$Content}
            <% end_if %>
            </p>
            <% include nswds/Icon Icon='east' %>
        </div>
        <% if $Image %>
        <div class="nsw-card__image-area">
            <% if $ImageWidth || $ImageHeight %>
                <% if not $ImageHeight %>
                    {$Image.ScaleWidth($ImageWidth)}
                <% else %>
                    {$Image.Fill($ImageWidth, $ImageHeight)}
                <% end_if %>
            <% else %>
                 {$Image.ScaleWidth(400)}
            <% end_if %>
        </div>
        <% end_if %>
    </div>
</div>
