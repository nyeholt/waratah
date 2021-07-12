<%-- do not use this template if you want a link --%>
<% if $ButtonType='button' %>
    <button type="<% if $InputType %>{$InputType}<% else %>button<% end_if %>" class="nsw-button nsw-button--<% if $State %>{$State}<% else %>primary<% end_if %><% if $ButtonClass %> {$ButtonClass.XML}<% end_if %>">
        {$Title.XML}
    </button>
<% else_if $ButtonType='input' %>
    <input type="<% if $InputType %>{$InputType}<% else %>submit<% end_if %>" class="nsw-button nsw-button--<% if $State %>{$State}<% else %>primary<% end_if %><% if $ButtonClass %> {$ButtonClass.XML}<% end_if %>" value="{$Title.XML}">
<% else_if $Link %>
    <a href="{$Link}" class="nsw-button nsw-button--<% if $State %>{$State}<% else %>primary<% end_if %><% if $ButtonClass %> {$ButtonClass.XML}<% end_if %>">
        {$Title.XML}
    </a>
<% end_if %>
