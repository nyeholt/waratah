<% if $Member %>
<nav class="nsw-side-nav" aria-labelledby="profile-links">

    <div class="nsw-side-nav__header">
        <a id="profile-links" href="{$EditProfileLink.XML}" class="nsw-side-nav__heading"><%t nswds.PROFILE_LINKS 'Profile' %></a>
    </div>

    <ul>

        <% if $ProfilePages %>
            <li><a href="$PageLink">Pages</a></li>
        <% end_if %>

        <% if $ProfileFolders %>
            <li><a href="$FolderLink">Files</a></li>
        <% end_if %>

        <% if $DirectoryLink %>
            <li><a href="$DirectoryLink">Directory</a></li>
        <% end_if %>

        <% if $MFALink %>
            <li><a href="$MFALink">Multi-Factor Authentication (MFA)</a></li>
        <% end_if %>

        <li><a href="$ChangePasswordLink">Change password</a></li>

    </ul>

</nav>

<% if $SignOutForm %>
    {$SignOutForm}
<% end_if %>

<% else %>

<nav class="nsw-side-nav" aria-labelledby="public-links">

    <div class="nsw-side-nav__header">
        <a id="public-links" href="#" class="nsw-side-nav__heading">Menu</a>
    </div>

    <ul>
        <li><a class="<% if $Action =='login' %>current<% end_if %>" href="$SignInLink">Sign in</a></li>
        <li><a class="<% if $Action == 'lostpassword' %>current<% end_if %>" href="$LostPasswordLink">Lost password</a></li>
        <li><a class="<% if $URLSegment == '_register' %>current<% end_if %>" href="$RegisterLink">Register</a></li>
    </ul>

</nav>

<% end_if %>
