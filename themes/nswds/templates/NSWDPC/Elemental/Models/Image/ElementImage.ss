<% if $ShowTitle && $Title %>
    <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
        {$Title}
    </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
<% end_if %>
<% if $Height == "small" %>
    <img class="<% if $Width == "full" %>img-full<% else %>img-fluid<% end_if %>" src="$Image.FocusFillMax(1440,640).URL" alt="$Image.AltText">
<% else_if $Height == "medium" %>
    <img class="<% if $Width == "full" %>img-full<% else %>img-fluid<% end_if %>" src="$Image.FocusFillMax(1440,960).URL" alt="$Image.AltText">
<% else_if $Height == "large" %>
    <img class="<% if $Width == "full" %>img-full<% else %>img-fluid<% end_if %>" src="$Image.FocusFillMax(1440,960).URL" alt="$Image.AltText">
<% else %>
    <img class="<% if $Width == "full" %>img-full<% else %>img-fluid<% end_if %>" src="$Image.ScaleMaxWidth(2560).URL" alt="$Image.AltText">
<% end_if %>
