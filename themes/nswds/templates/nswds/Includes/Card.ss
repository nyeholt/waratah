<div class="nsw-col<% if $Card_ColumnOptions %> $Card_ColumnOptions.XML<% else %> nsw-col-md-4<% end_if %>">
    <div class="nsw-card<% if $Card_NoHeadline %> nsw-card--headline nsw-card--content<% end_if %>">
        <div class="nsw-card__content">
            <h2 class="nsw-card__title">
                <a href="{$Card_LinkURL}" class="nsw-card__link">{$Card_Title.XML}</a>
            </h2>

            <% if $Card_Tag %>
                <p class="nsw-card__tag">{$Card_Tag.XML}</p>
            <% end_if %>

            <% if $Card_Date %>
                <p class="nsw-card__date">
                    <time datetime="{$Card_Date.Format('yyyy-MM-dd')}">{$Card_Date.Nice}</time>
                </p>
            <% end_if %>
            <p class="nsw-card__copy">
            <% if $Card_Description %>
                {$Card_Description}
            <% else_if $Card_Content %>
                {$Card_Content}
            <% end_if %>
            </p>
            <% include nswds/Icon Icon='east', IconExtraClass='nsw-card__icon' %>
        </div>
        <% if $Card_Image %>
        <div class="nsw-card__image-area">
            <% if $Card_ImageWidth || $Card_ImageHeight %>
                <% if not $Card_ImageHeight %>
                    {$Card_Image.ScaleWidth($Card_ImageWidth)}
                <% else %>
                    {$Card_Image.Fill($Card_ImageWidth, $Card_ImageHeight)}
                <% end_if %>
            <% else %>
                 {$Card_Image.ScaleHeight(200)}
            <% end_if %>
        </div>
        <% end_if %>
    </div>
</div>
