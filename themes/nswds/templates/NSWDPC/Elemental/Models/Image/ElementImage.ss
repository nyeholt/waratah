<% if $ShowTitle && $Title %>
    <<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
        {$Title}
    </<% if $HeadingLevel %>$HeadingLevel<% else %>h2<% end_if %>>
<% end_if %>
<% if $Height == "small" %>
    <img class="img-fluid" src="$Image.FocusFillMax(1200,320).URL" alt="$Image.AltText">
<% else_if $Height == "medium" %>
    <img class="img-fluid" src="$Image.FocusFillMax(1200,640).URL" alt="$Image.AltText">
<% else_if $Height == "large" %>
    <img class="img-fluid" src="$Image.FocusFillMax(1200,960).URL" alt="$Image.AltText">
<% else %>
    <img class="img-fluid" src="$Image.ScaleMaxWidth(1200).URL" alt="$Image.AltText">
<% end_if %>

