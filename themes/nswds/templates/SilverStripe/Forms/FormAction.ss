<span class="nsw-p-right-sm nsw-p-bottom-sm">
<% if $UseButtonTag %>
    <button $AttributesHTML>
        get:{$getInputType}
        <% if $Icon %><% include nswds/Icon Icon_Icon=$Icon %><% end_if %>
        <% if $ButtonContent %>$ButtonContent<% else %><span>$Title.XML</span><% end_if %>
    </button>
<% else %>
    <input $AttributesHTML />
<% end_if %>
</span>
