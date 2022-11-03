<div class="wrth-feature__content">

    <% if $Subtitle %>
        <p class="nsw-intro">{$Subtitle}</p>
    <% end_if %>

    <div class="nsw-block">
        {$HTML}
    </div>

    <% if $LinkTarget %>
        <div class="nsw-block">
            <p><a href="{$LinkTarget.LinkURL}">{$CallToAction}</a></p>
        </div>
    <% end_if %>

</div>
