<div class="spacer spacer--md"></div>
<div class="spacer spacer--md spacer--charcoal"></div>
<section class="nsw-featured-video">
    <div class="nsw-container">
        <div class="nsw-grid">
            <div class="col-12 nsw-featured-video__video">
                <% if $ShowTitle && $Title %>
                    <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
                        {$Title}
                    </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
                <% end_if %>
                <div class="nsw-featured-video__video-bg" style="background-image: url('{$Image.FocusFillMax(1300,867).URL}'); background-position: $Image.PercentageX% $Image.PercentageY%;">
                    <button type="button" class="nsw-featured-video__video-btn nsw-featured-video__video-btn--disabled" data-toggle="modal" data-target="#videoModal" data-video-id="{$Video}" data-video-type="<% if $Provider == "vimeo" %>{$Provider.XML}<% else %>youtube<% end_if %>">
                        <span>Play</span>
                    </button>
                </div>
            </div>
            <% if $HTML || $Transcript %>
                <div class="col-12 col-lg-6 nsw-featured-video__description">
                    <% if $HTML %>
                    <div class="nsw-wysiwyg-content">
                        {$HTML}
                    </div>
                    <% end_if %>
                    <% if $Transcript %>
                    <p>
                        <button type="button" class="button-link light" data-toggle="modal" data-target="#videoTranscriptModal">
                            Read transcript <i class="nsw-icon-arrow-right"></i>
                        </button>
                    </p>
                    <% end_if %>
                </div>
            <% end_if %>
            <% if $FeatureLink %>
            <div class="col-auto ml-lg-auto nsw-featured-video__more-link">
                <a href="$FeatureLink.LinkURL">{$FeatureLink.Title}</a>
            </div>
            <% end_if %>
        </div>
    </div>
</section>
<div class="spacer spacer--md spacer--charcoal"></div>
<div class="spacer spacer--md"></div>
<% if $Transcript %>
    <div class="modal fade" id="videoTranscriptModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="videoTranscriptModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="videoTranscriptModalLabel">{$Title} transcript</h5>
                </div>
                <div class="modal-body">
                    {$Transcript}
                </div>
                <div class="modal-footer">
                    <button type="button" class="nsw-button nsw-button--primary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
<% end_if %>
