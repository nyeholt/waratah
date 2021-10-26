<div class="nsw-col<% if $ContentBlock_ColumnOptions %> $ContentBlock_ColumnOptions.XML<% else %> nsw-col-md-4<% end_if %>">

    <div class="nsw-content-block">

        <div class="nsw-content-block__content">

            <h2 class="nsw-content-block__title">
                {$ContentBlock_Title.XML}
            </h2>

            <% if $ContentBlock_Content %>
                <div class="nsw-content-block__copy">
                    {$ContentBlock_Content}
                </div>
            <% end_if %>

            <% if $ContentBlock_Listing %>
            <ul class="nsw-content-block__list">
                <% loop $ContentBlock_Listing %>
                <li><a href="{$LinkURL}">{$Title.XML}</a></li>
                <% end_loop %>
            </ul>
            <% end_if %>

            <% if $ContentBlock_Link %>
            <div class="nsw-content-block__link">
                <a href="$ContentBlock_Link.LinkURL">{$ContentBlock_Link.Title.XML}</a>
            </div>
            <% end_if %>

        </div>

        <% if $ContentBlock_Image || $ContentBlock_IconImage || ContentBlock_IconSVG %>
            <div class="nsw-content-block__image-area">
            <% if $ContentBlock_Image %>
                <img src="$ContentBlock_Image.FocusFillMax(600,400).URL" alt="{$ContentBlock_Image.AltText.XML}" class="nsw-content-block__image">
            <% else_if $ContentBlock_IconImage %>
                <div class="nsw-content-block__icon">
                <img src="{$ContentBlock_IconImage.FocusFillMax(64,64).URL}" alt="{$ContentBlock_IconImage.AltText.XML}">
                </div>
            <% else_if $ContentBlock_IconSVG %>
                <div class="nsw-content-block__icon">
                <img src="{$ContentBlock_IconSVG.URL}">
                </div>
            <% end_if %>
            </div>
        <% end_if %>

    </div>
</div>
