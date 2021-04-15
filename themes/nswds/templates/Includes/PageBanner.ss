<% if not $InSection(home) && $Image && $ShowBannerImage %>
    <div class="nsw-hero-banner">
        <div class="nsw-container">
            <div class="nsw-hero-banner__image-area">
                <img src="$Image.FocusFillMax(1920,640).URL" class="nsw-hero-banner__image" alt="$Image.Title">
            </div>
        </div>
    </div>
<% end_if %>
