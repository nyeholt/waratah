<% if $GlobalSpecialAnnouncements %>

    <% loop $GlobalSpecialAnnouncements %>

    <div class="nsw-sitewide-message<% if $GlobalAlert_AlertState=='critical' %> nsw-sitewide-message--critical<% else_if $GlobalAlert_AlertState=='light' %> nsw-sitewide-message--light<% end_if %> js-sitewide-message" role="alert">

        <div class="nsw-sitewide-message__wrapper">

            <div class="nsw-sitewide-message__content">
                <h2 class="nsw-sitewide-message__title">{$GlobalAlert_Title.XML}</h2>
                <p>{$GlobalAlert_Content.XML}<% if not $GlobalAlert_UseButtonLink %> <a href="{$GlobalAlert_LinkURL}" class="nsw-sitewide-message__link"><% if $GlobalAlert_LinkTitle %>{$GlobalAlert_LinkTitle}<% else %><%t nswds.MORE_INFORMATION 'More information' %></a><% end_if %></p>
            </div>

            <% if $GlobalAlert_UseButtonLink %>
                <% if $GlobalAlert_ButtonTitle %>
                    <% include nswds/Button Button_LinkURL=$GlobalAlert_LinkURL, Button_Title=$GlobalAlert_ButtonTitle %>
                <% else %>
                    <% include nswds/Button Button_LinkURL=$GlobalAlert_LinkURL, Button_Title='More information' %>
                <% end_if %>
            <% end_if %>

            <button type="button" class="nsw-sitewide-message__close">
                <% include nswds/Icon Icon_Icon='close' %>
                <span class="sr-only">Close message</span>
            </button>

        </div>

        <% if $GlobalAlert_SchemaJSON %>
        <script type="application/ld+json">
            $GlobalAlert_SchemaJSON.RAW
        </script>
        <% end_if %>


    </div>

    <% end_loop %>

<% end_if %>
