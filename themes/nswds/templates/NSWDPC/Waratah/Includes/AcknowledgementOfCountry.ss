<% if $AcknowledgementOfCountryNotice %>

<% with $AcknowledgementOfCountryNotice %>

<div class="wrth-mm" id="wrth-mm-aoc"<% if $AutoCloseAfter %> data-onload="1" data-autoclose-after="{$AutoCloseAfter}"<% end_if %>>

    <div class="wrth-mm__overlay" tabindex="-1" data-micromodal-close>

        <div class="wrth-mm__container" role="dialog" aria-modal="true" aria-labelledby="wrth-mm-aoc-title">

            <div class="wrth-mm__header nsw-block">
                <% if $ShowTitle && $Title %>
                    <h2 id="wrth-mm-aoc-title">{$Title.XML}</h2>
                <% end_if %>

                <% if $IsDismissible %>
                <button class="wrth-mm__close nsw-icon-button nsw-button--light-outline" aria-label="Close modal" data-micromodal-close>
                    <% include nswds/Icon Icon_Icon='close' %>
                </button>
                <% end_if %>
            </div>

            <div class="wrth-mm__content nsw-block">
                <p>{$Description}</p>
            </div>

            <% if $IsDismissible %>
            <div class="wrth-mm__footer nsw-block">
                <button class="wrth-mm__btn nsw-button nsw-button--light-outline" data-micromodal-close aria-label="Close this dialog window">
                    <%t nswds.CLOSE 'Close' %>
                </button>
            </div>
            <% end_if %>

        </div>

    </div>

</div>

<% end_with %>
<% end_if %>
