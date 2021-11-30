
    <% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>
    <% if $CuratorFeedDescription %>
        <p>{$CuratorFeedDescription.XML}</p>
    <% end_if %>
    <div id="{$CuratorContainerId.XML}">
        <% if $IncludePoweredBy %><a href="https://curator.io" target="_blank" class="wrth-crt-logo wrth-crt-tag"><%t nswds.CURATOR_POWERED_BY 'Powered by Curator.io' %></a><% end_if %>
    </div>
