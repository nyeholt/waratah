<%-- iframe video uses the base media component and implements some lazy loading extras --%>

<% if $EmbedURL %>

<% if $WillLazyLoad %>{$Polyfill}<noscript class="loading-lazy"><% end_if %>
<iframe loading="lazy" id="video-{$ID}-{$Anchor}" src="{$EmbedURL}" allow="{$AllowAttribute}" allowfullscreen></iframe>
<% if $WillLazyLoad %></noscript><% end_if %>

<% end_if %>
