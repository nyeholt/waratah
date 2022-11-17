<div id="{$ID}" class="readonly nsw-bg--off-white nsw-border--2 nsw-border--grey-04 nsw-p-sm">
    {$Value}
</div>
<% if $IncludeHiddenField %>
    <input $getAttributesHTML("id", "type") id="hidden-{$ID}" type="hidden" />
<% end_if %>
