<% if $GlobalSpecialAnnouncements %>
    <% loop $GlobalSpecialAnnouncements %>
    <div class="nsw-sitewide-message<% if $AlertState=='critical' %> nsw-sitewide-message--critical<% else_if $AlertState=='light' %> nsw-sitewide-message--light<% end_if %> js-sitewide-message" role="alert">

        <div class="nsw-sitewide-message__wrapper">

            <div class="nsw-sitewide-message__content">
                <% if $Title %>
                <h2 class="nsw-sitewide-message__title">{$Title.XML}</h2>
                <% end_if %>
                <% if $ShortDescription %>
                <p>{$ShortDescription.XML}</p>
                <% end_if %>
            </div>

            <% if $Link %>
            <% include nswds/Button Link=$Link.LinkURL, Title='More information' %>
            <% end_if %>

            <button type="button" class="nsw-sitewide-message__close">
                <% include nswds/Icon Icon='close' %>
                <span class="sr-only">Close message</span>
            </button>

        </div>

        <% if $SchemaJSON %>
        <script type="application/ld+json">
            $SchemaJSON.RAW
        </script>
        <% end_if %>

    </div>
    <% end_loop %>
<% end_if %>
