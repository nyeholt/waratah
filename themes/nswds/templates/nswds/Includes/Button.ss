<%-- do not use this template if you want a link --%>
<% if $Button_Type == 'button' %>
    <button type="<% if $Button_InputType %>{$Button_InputType}<% else %>button<% end_if %>" class="nsw-button nsw-button--<% if $Button_State %>{$Button_State}<% else %>dark<% end_if %><% if $Button_ExtraClass %> {$Button_ExtraClass.XML}<% end_if %>">
        <% if $Button_Icon %>
            <span>{$Button_Title.XML}</span>
            <% include nswds/Icon Icon_Icon=$Button_Icon %>
        <% else %>
            {$Button_Title.XML}
        <% end_if %>
    </button>
<% else_if $Button_Type == 'input' %>
    <input<% if $Button_InputName %> name="{$Button_InputName.XML}"<% end_if %> type="<% if $Button_InputType %>{$Button_InputType}<% else %>submit<% end_if %>" class="nsw-button nsw-button--<% if $Button_State %>{$Button_State}<% else %>dark<% end_if %><% if $Button_ExtraClass %> {$Button_ExtraClass.XML}<% end_if %>" value="{$Button_Title.XML}"<% if $Button_IsDisabled %> disabled<% end_if %>>
<% else_if $Button_LinkURL %>
    <a href="{$Button_LinkURL}" class="nsw-button nsw-button--<% if $Button_State %>{$Button_State}<% else %>dark<% end_if %><% if $Button_ExtraClass %> {$Button_ExtraClass.XML}<% end_if %>">
        <% if $Button_Icon %>
            <% include nswds/Icon Icon_Icon=$Button_Icon %>
            <span>{$Button_Title.XML}</span>
        <% else %>
            {$Button_Title.XML}
        <% end_if %>
    </a>
<% end_if %>
