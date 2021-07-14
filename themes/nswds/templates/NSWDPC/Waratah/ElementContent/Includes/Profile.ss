<% if $ShowTitle && $Title %>
    <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
        {$Title}
    </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
<% end_if %>
<% if $Image %>
    <div class="nsw-grid">
        <div class="nsw-col nsw-col-md-8">
            <div class="profile-content">
                {$HTML}
            </div>
        </div>
        <div class="nsw-col nsw-col-md-4">
            <div class="profile-photo">
                <img src="{$Image.FocusFillMax(300,400).URL}" class="img-fluid img-profile" alt="$Image.Title">
            </div>
        </div>
    </div>
<% else %>
    {$HTML}
<% end_if %>
