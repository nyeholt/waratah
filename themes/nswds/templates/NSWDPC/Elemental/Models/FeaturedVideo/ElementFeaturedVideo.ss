<% if $Video && $Provider %>

    <% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>

    <% if $Image %>
        <figure class="nsw-media">
            <% include NSWDPC/Elemental/Models/FeaturedVideo/LinkedVideo %>
            <% if $HTML || $FeatureLink %>
            <figcaption>
                <% if $HTML %>
                {$HTML}
                <% end_if %>
                <% if $FeatureLink %>
                    <p><a href="{$FeatureLink.LinkURL}">{$FeatureLink.Title}</a></p>
                <% end_if %>
            </figcaption>
            <% end_if %>
        </figure>
    <% else %>
        <% include NSWDPC/Waratah/IframeVideo Provider=$Provider, Video=$Video, Description='', LinkTarget=$FeatureLink, Anchor=$Anchor, WillLazyLoad=$WillLazyLoad, Description='', HTML=$HTML, Transcript=$Transcript %>
    <% end_if %>

<% end_if %>
