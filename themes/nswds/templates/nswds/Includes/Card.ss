<div class="nsw-col<% if $Card_ColumnOptions %> $Card_ColumnOptions.XML<% else %> nsw-col-md-4<% end_if %>">

    <% if $Card_Description == '' && $Card_Content == '' %>
        <%-- if there is no copy --%>
        <div class="nsw-card nsw-card--headline<% if not $Card_HeadlineOnly %> nsw-card--content<% end_if %><% if $Card_Brand %> nsw-card--{$Card_Brand.XML}<% end_if %>">
    <% else %>
        <%-- a card with copy --%>
        <div class="nsw-card<% if not $Card_HeadlineOnly %> nsw-card--content<% end_if %><% if $Card_Brand %> nsw-card--{$Card_Brand.XML}<% end_if %>">
    <% end_if %>

        <div class="nsw-card__content">

            <h2 class="nsw-card__title">
                <a href="{$Card_LinkURL}" class="nsw-card__link">{$Card_Title.XML}</a>
            </h2>

            <% if $Card_Tags && $Card_Tags.Count > 0 %>
                <%-- only the first in the list is shown --%>
                <p class="nsw-card__tag">{$Card_Tags.First.Name.XML}</p>
            <% else_if $Card_Tag %>
                <p class="nsw-card__tag">{$Card_Tag.XML}</p>
            <% end_if %>

            <% if $Card_Date %>
                <p class="nsw-card__date">
                    <time datetime="{$Card_Date.Format('yyyy-MM-dd')}">{$Card_Date.Nice}</time>
                </p>
            <% end_if %>

            <p class="nsw-card__copy">
            <% if $Card_Description %>
                {$Card_Description.XML}
            <% else_if $Card_Content %>
                {$Card_Content.XML}
            <% end_if %>
            </p>

            <% if $Card_LinkIcon == '' %>
                <% include nswds/Icon Icon_Icon='east', Icon_IconExtraClass='nsw-card__icon' %>
            <% else %>
                <% include nswds/Icon Icon_Icon=$Card_LinkIcon, Icon_IconExtraClass='nsw-card__icon' %>
            <% end_if %>

        </div>

        <% if $Card_Image || $Card_ImageURL %>
        <%-- note: card image height is restricted to 200px @ 16px/em --%>
        <div class="nsw-card__image-area">
            <% if $Card_Image %>
                <% if $Card_ImageWidth || $Card_ImageHeight %>
                    <% if not $Card_ImageHeight %>
                        {$Card_Image.ScaleWidth($Card_ImageWidth)}
                    <% else %>
                        {$Card_Image.Fill($Card_ImageWidth, $Card_ImageHeight)}
                    <% end_if %>
                <% else %>
                     {$Card_Image.ScaleHeight(200)}
                <% end_if %>
            <% else %>
                <img src="{$Card_ImageURL.XML}" height="200">
            <% end_if %>
        </div>
        <% end_if %>

    </div>
</div>
