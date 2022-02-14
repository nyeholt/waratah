
<% if $SubscribeForm %>

    <% if $IsCallout %>

        <div class="nsw-callout wrth-callout__subscribe">

            <% include nswds/Icon Icon_Icon='mail', Icon_IconExtraClass='nsw-callout__icon' %>

            <div class="nsw-callout__content">

                <h4 class="nsw-callout__title">
                    {$Title.XML}
                </h4>

                <% if $BeforeFormContent %>
                    <div class="before">
                        {$BeforeFormContent}
                    </div>
                <% end_if %>

                <div class="form wrth-callout__form">
                    {$SubscribeForm}
                </div>

                <% if $BeforeFormContent %>
                    <div class="after">
                        {$AfterFormContent}
                    </div>
                <% end_if %>
            </div>

        </div>

    <% else %>

        <div class="nsw-content-block">

            <div class="nsw-content-block__content">

                <h2 class="nsw-content-block__title">{$Title.XML}</h2>

                <div class="nsw-content-block__copy">

                    <% if $BeforeFormContent %>
                        <div class="nsw-intro">
                            {$BeforeFormContent}
                        </div>
                    <% end_if %>

                    <div class="form wrth-callout__form">
                        {$SubscribeForm}
                    </div>

                    <% if $BeforeFormContent %>
                        <div class="small">
                            {$AfterFormContent}
                        </div>
                    <% end_if %>
                </div>

            </div>

            <% if $Image %>
            <div class="nsw-content-block__image-area">
                <img src="$Image.FocusFillMax(600,400).URL" alt="{$Image.Title.XML}" class="nsw-content-block__image">
            </div>
            <% end_if %>

        </div>

    <% end_if %>

<% end_if %>
