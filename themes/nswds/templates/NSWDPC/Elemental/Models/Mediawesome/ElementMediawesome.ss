<% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>
<% if $HTML %>
    {$HTML}
<% end_if %>

<% include NSWDPC/Elemental/Models/Mediawesome/ItemList Items=$RecentPosts %>

<% if $MediaHolder.Link %>
<div class="nsw-block">
    <a href="{$MediaHolder.Link}" class="nsw-button nsw-button--dark" title="{$MediaHolderLinkTitle.XML}">{$MediaHolderLinkTitle.XML}</a>
</div>
<% end_if %>
