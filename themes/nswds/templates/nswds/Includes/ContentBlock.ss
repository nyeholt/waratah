<div class="nsw-col<% if $ContentBlock_ColumnOptions %> $ContentBlock_ColumnOptions.XML<% else %> nsw-col-md-4<% end_if %>">

    <div class="nsw-content-block">

        <div class="nsw-content-block__content">

            <h2 class="nsw-content-block__title">
                {$ContentBlock_Title.XML}
            </h2>

            <% if $ContentBlock_HTML %>
                <div class="nsw-content-block__copy">
                    {$ContentBlock_HTML}
                </div>
            <% else %>
                <p class="nsw-content-block__copy">
                <% if $ContentBlock_Description %>
                    {$ContentBlock_Description.XML}
                <% else_if $ContentBlock_Abstract %>
                    {$ContentBlock_Abstract.XML}
                <% else_if $ContentBlock_MetaDescription %>
                    {$ContentBlock_MetaDescription.XML}
                <% else_if $ContentBlock_Content %>
                    {$ContentBlock_Content.Summary}
                <% end_if %>
                </p>
            <% end_if %>

            <% if $ContentBlock_Listing %>
            <ul class="nsw-content-block__list">
                <% loop $ContentBlock_Listing %>
                <li><a href="{$Link}">{$Title.XML}</a></li>
                <% end_loop %>
            </ul>
            <% end_if %>

            <% if $ContentBlock_URL %>
            <div class="nsw-content-block__link">
                <a href="$ContentBlock_URL"><%t nswds.VIEW_MORE 'View more' %></a>
            </div>
            <% else_if $ContentBlock_Link %>
            <div class="nsw-content-block__link">
                <a href="$ContentBlock_Link.LinkURL">{$ContentBlock_Link.Title.XML}</a>
            </div>
            <% end_if %>

        </div>

        <div class="nsw-content-block__image-area">
        <%-- note: content block image height is restricted to 200px @ 16px/em --%>
        <% if $ContentBlock_Image || $ContentBlock_Icon %>
            <% if $ContentBlock_Image %>
                <% if $ContentBlock_ImageWidth && $ContentBlock_ImageHeight %>
                    {$ContentBlock_Image.FocusFill($ContentBlock_ImageWidth, $ContentBlock_ImageHeight)}
                <% else_if $ContentBlock_ImageWidth %>
                    {$ContentBlock_Image.ScaleWidth($ContentBlock_ImageWidth)}
                <% else_if $ContentBlock_ImageHeight %>
                    {$ContentBlock_Image.ScaleHeight($ContentBlock_ImageHeight)}
                <% else %>
                    {$ContentBlock_Image.ScaleHeight(200)}
                <% end_if %>
            <% else_if $ContentBlock_Icon %>
                <div class="nsw-content-block__icon">
                <%-- an (sanitised) SVG icon --%>
                {$ContentBlock_Icon.RAW}
                </div>
            <% end_if %>
        <% else %>
            <div class="no-image"></div>
        <% end_if %>
        </div>

    </div>
</div>
