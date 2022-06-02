<div class="nsw-callout">
    <% if $Callout_Icon %>
        <% include nswds/Icon Icon_Icon=$Callout_Icon, Icon_IconExtraClass='nsw-callout__icon' %>
    <% end_if %>
    <div class="nsw-callout__content">
        <h4>{$Callout_Title.XML}</h4>
        <% if $Callout_HTML %>
            {$Callout_HTML}
        <% else_if $Callout_Content %>
            <p>{$Callout_Content.XML}</p>
        <% end_if %>
        <% if $Callout_LinkText && $Callout_LinkURL %>
            <a href="{$Callout_LinkURL}">{$Callout_LinkText}</a>
        <% else_if $Callout_Link %>
            <% with $Callout_Link %>
                <a href="{$LinkURL}">{$Title}</a>
            <% end_with %>
        <% end_if %>
    </div>
</div>
