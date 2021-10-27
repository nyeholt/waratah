<% if not $AnalyticsOptOut %>
<% with $SiteConfig %>
<% if $GoogleTagManagerCode && $GoogleImplementation %>
<% if $GoogleImplementation == 'GTM' %>
    <noscript>
    <iframe src="https://www.googletagmanager.com/ns.html?id={$GoogleTagManagerCode.URLATT}" height="0" width="0" style="display:none;visibility:hidden"></iframe>
    </noscript>
<% else_if $GoogleImplementation == 'Custom' %>
    {$CustomGoogleImplementation('BodyStart')}
<% end_if %>
<% end_if %>
<% end_with %>
<% end_if %>
