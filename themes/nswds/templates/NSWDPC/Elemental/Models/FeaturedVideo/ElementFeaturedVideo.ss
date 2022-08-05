<% if $Video && $Provider %>

<div class="wrth-video-featured">

    <% if $AddContainer == 0 %>
    <%-- container is added in the ElementHolder --%>
    <div class="nsw-container">
    <% end_if %>

        <% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>

        <% if $Image %>

            <%-- a linked video --%>

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

            <% include NSWDPC/Waratah/IframeVideo Provider=$Provider, Video=$Video, Description='', LinkTarget=$FeatureLink, Anchor=$Anchor, WillLazyLoad=$WillLazyLoad, Media_Brand='transparent', Transcript=$Transcript, HTML=$HTML %>

        <% end_if %>

    <% if $AddContainer == 0 %>
    </div>
    <% end_if %>

</div>

<% end_if %>
