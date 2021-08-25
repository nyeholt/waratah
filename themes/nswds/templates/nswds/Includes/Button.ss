<%-- do not use this template if you want a link --%>
<% if $Button_Type='button' %>
    <button type="<% if $Button_InputType %>{$Button_InputType}<% else %>button<% end_if %>" class="nsw-button nsw-button--<% if $State %>{$State}<% else %>primary<% end_if %><% if $Button_ExtraClass %> {$Button_ExtraClass.XML}<% end_if %>">
        {$Button_Title.XML}
    </button>
<% else_if $Button_Type='input' %>
    <input<% if $Button_InputName %> name="{$Button_InputName.XML}"<% end_if %> type="<% if $Button_InputType %>{$Button_InputType}<% else %>submit<% end_if %>" class="nsw-button nsw-button--<% if $Button_State %>{$Button_State}<% else %>primary<% end_if %><% if $Button_ExtraClass %> {$Button_ExtraClass.XML}<% end_if %>" value="{$Button_Title.XML}">
<% else_if $Button_LinkURL %>
    <a href="{$Button_LinkURL}" class="nsw-button nsw-button--<% if $Button_State %>{$Button_State}<% else %>primary<% end_if %><% if $Button_ExtraClass %> {$Button_ExtraClass.XML}<% end_if %>">
        {$Button_Title.XML}
    </a>
<% end_if %>
