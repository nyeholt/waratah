<% if $SiteConfig.GoogleTagManagerCode %>
    <%-- Google Tag Manager --%>
    <script async src="https://www.googletagmanager.com/gtag/js?id={$SiteConfig.GoogleTagManagerCode}"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', '{$SiteConfig.GoogleTagManagerCode}');
    </script>
    <%-- End Google Tag Manager --%>
<% end_if %>
