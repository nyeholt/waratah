<div class="nsw-sitewide-message<% if $Priority=='critical' %> nsw-sitewide-message--critical<% else_if $Priority=='light' %> nsw-sitewide-message--light<% end_if %> js-sitewide-message" role="alert">

    <div class="nsw-sitewide-message__wrapper">

        <div class="nsw-sitewide-message__content">
            <h2 class="nsw-sitewide-message__title">{$Title.XML}</h2>
            <p>{$Content.XML}<% if not $UseButtonLink %> <a href="{$Link}" class="nsw-sitewide-message__link">{$Link}</a><% end_if %></p>
        </div>

        <% if $UseButtonLink %>
        <% include nswds/Button Link=$Link, Title='More information' %>
        <% end_if %>

        <button type="button" class="nsw-sitewide-message__close">
            <% include nswds/Icon Icon='close' %>
            <span class="sr-only">Close message</span>
        </button>

    </div>

</div>
