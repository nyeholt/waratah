
<% if $SubscribeForm %>

    <div class="nsw-card nsw-card--subscribe">
        <div class="nsw-card__content<% if not $Image %> no-subscribe-image"<% end_if %>>
            <h2 class="nsw-card__title">
                    {$Title.XML}
            </h2>
            <div class="nsw-card__copy">
                <% if $BeforeFormContent %>
                    <div class="content before">
                        {$BeforeFormContent}
                    </div>
                <% end_if %>

                {$SubscribeForm}

                <% if $BeforeFormContent %>
                    <div class="content after">
                        {$AfterFormContent}
                    </div>
                <% end_if %>
            </div>
        </div>
        <% if $Image %>
            <div class="nsw-card__image-area<% if $ImageAlignment %> $ImageAlignment<% end_if %>">
                <img src="$Image.FocusFillMax(600,400).URL" alt="{$Image.Title.XML}" class="nsw-card__image">
            </div>
        <% end_if %>
    </div>

<% end_if %>
