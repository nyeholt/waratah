<% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>
<% if $HTML %>
    {$HTML}
<% end_if %>
<% if $Elements.Elements %>
    <div class="nsw-grid">

        <% loop $Elements.Elements %>

            <div class="nsw-col {$Up.Up.ColumnClass($Up.OverrideColumns)}">
                <div class="nsw-content-block">
                    <div class="nsw-content-block__content">

                        <h2 class="nsw-content-block__title">
                            {$Title.XML}
                        </h2>

                        <% if $Up.Up.CardStyle == "title-abstract" || $Up.Up.CardStyle == "title-image-abstract" %>
                            <% if $HTML %>
                                <div class="nsw-content-block__copy">
                                    {$HTML}
                                </div>
                            <% else if $Abstract || $Content %>
                                <p class="nsw-content-block__copy">
                                    <% if $Abstract %>{$Abstract.XML}<% else %>$Content.XML<% end_if %>
                                </p>
                            <% end_if %>
                        <% end_if %>

                        <% if $Listing %>
                        <ul class="nsw-content-block__list">
                            <% loop $Listing %>
                            <li><a href="{$Link}">{$Title.XML}</a></li>
                            <% end_loop %>
                        </ul>
                        <% end_if %>

                        <% if $ContentLink %>
                            <div class="nsw-content-block__link">
                                <a href="{$ContentLink.LinkURL}" class="nsw-content-block__link">{$Title.XML}</a>
                            </div>
                        <% else_if $LinkTarget %>
                            <div class="nsw-content-block__link">
                                <a href="{$LinkTarget.LinkURL}" class="nsw-content-block__link">{$Title.XML}</a>
                            </div>
                        <% end_if %>

                    </div>

                    <% if $Up.Up.CardStyle == "title-image-abstract" && $Image %>
                        <div class="nsw-content-block__image-area">
                            <img src="$Image.FocusFillMax(600,400).URL" alt="{$Image.Title.XML}" class="nsw-content-block__image">
                        </div>
                    <% end_if %>

                </div>
            </div>
        <% end_loop %>
    </div>
<% end_if %>
