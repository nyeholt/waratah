<% if $GalleryStyle == "card" %>
    <section class="nsw-three-col-card-grid">
        <div class="nsw-container">
            <% if $ShowTitle && $Title %>
                <div>
                    <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
                        {$Title}
                    </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
                </div>
            <% end_if %>
            <div class="nsw-grid">
                <% loop SortedVideos %>
                    <div class="col-12 col-sm-6 col-lg-4 nsw-three-col-card-grid__card card-large nsw-three-col-card-grid">
                        <div class="nsw-three-col-card-grid__card-wrapper">
                            <div class="nsw-three-col-card-grid__card-image-container">
                                <div class="nsw-three-col-card-grid__card-image" style="background-image: url('{$Image.FocusFillMax(420,280).URL}')">
                                    <button type="button" class="nsw-three-col-video-gallery-video__btn nsw-featured-video__video-btn--disabled" data-toggle="modal" data-target="#videoModal" data-video-id="{$Video.XML}" data-video-type="<% if $Provider == "vimeo" %>{$Provider.XML}<% else %>youtube<% end_if %>">
                                        <span>Play</span>
                                    </button>
                                </div>
                            </div>
                            <div class="nsw-three-col-card-grid__card-text nsw-three-col-card-grid__card-text--box-shadow nsw-three-col-card-grid__card-text--extra-spacing">
                                <h4>
                                    {$Title.XML}
                                </h4>
                                <% if $Description %>
                                    <p>
                                        {$Description.XML}
                                    </p>
                                <% end_if %>
                                <% if $Transcript %>
                                    <p class="transcript">
                                        <button type="button" class="button-link dark" data-toggle="modal" data-target="#videoTranscriptModal-{$Pos}">
                                            Read transcript <i class="nsw-icon-arrow-right"></i>
                                        </button>
                                    </p>
                                <% end_if %>
                                <% if $LinkTarget %>
                                    <a href="{$LinkTarget.LinkURL}" class="nsw-button">{$LinkTarget.Title}</a>
                                <% end_if %>
                            </div>
                        </div>
                    </div>
                <% end_loop %>
            </div>
        </div>
    </section>
<% else %>
    <section class="nsw-three-col-video-gallery">
        <div class="nsw-container">
            <div class="nsw-grid">
                <div class="col">
                    <% if $ShowTitle && $Title %>
                        <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %> class="nsw-video-gallery-title">
                            {$Title.XML}
                        </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
                    <% end_if %>
                    <% if $HTML %>
                    <div class="nsw-wysiwyg-content">
                        {$HTML}
                    </div>
                    <% end_if %>
                    <div class="nsw-grid">
                        <% loop $SortedVideos %>
                            <div class="col-12 col-md-4 nsw-three-col-video-gallery-video">
                                <div class="nsw-three-col-video-gallery-video__bg" style="background-image: url('{$Image.FillMax(360,203).URL}')">
                                    <button type="button" class="nsw-three-col-video-gallery-video__btn nsw-featured-video__video-btn--disabled" data-toggle="modal" data-target="#videoModal" data-video-id="{$Video.XML}" data-video-type="<% if $Provider == "vimeo" %>{$Provider.XML}<% else %>youtube<% end_if %>">
                                        <span>Play</span>
                                    </button>
                                </div>
                                <div class="nsw-three-col-video-gallery-video__description">
                                    <p>{$Title.XML}</p>
                                    <% if $Description %>
                                        <p><small>{$Description.XML}</small></p>
                                    <% end_if %>
                                    <% if $Transcript %>
                                    <p>
                                        <small>
                                            <button type="button" class="button-link dark" data-toggle="modal" data-target="#videoTranscriptModal-{$Pos}">
                                                Read transcript <i class="nsw-icon-arrow-right"></i>
                                            </button>
                                        </small>
                                    </p>
                                    <% end_if %>
                                </div>
                            </div>
                        <% end_loop %>
                    </div>
                </div>
            </div>
        </div>
    </section>
<% end_if %>

<% loop $SortedVideos %>
    <% if $Transcript %>
        <div class="modal fade" id="videoTranscriptModal-{$Pos}" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="videoTranscriptModalLabel-{$Pos}" aria-hidden="true">
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
<% end_loop %>
<div class="spacer spacer--md"></div>
