<% if $Member %>
<nav class="nsw-sidenav" aria-labelledby="profile-links">

    <div class="nsw-sidenav__header">
        <h2 id="profile-links" class="nsw-sidenav__heading">
        <a href="{$EditProfileLink.XML}" class="nsw-sidenav__heading-link"><%t banc.PROFILE_LINKS 'Profile' %></a>
        </h2>
    </div>

    <ul class="nsw-sidenav__list nsw-sidenav__list--level-1">

        <% if $ProfilePages %>
            <li class="nsw-sidenav__list-item"><a class="nsw-sidenav__link" href="$PageLink">Pages</a></li>
        <% end_if %>

        <% if $ProfileFolders %>
            <li class="nsw-sidenav__list-item"><a class="nsw-sidenav__link" href="$FolderLink">Files</a></li>
        <% end_if %>

        <% if $DirectoryLink %>
            <li class="nsw-sidenav__list-item"><a class="nsw-sidenav__link" href="$DirectoryLink">Directory</a></li>
        <% end_if %>

        <% if $MFALink %>
            <li class="nsw-sidenav__list-item"><a class="nsw-sidenav__link" href="$MFALink">Multi-Factor Authentication (MFA)</a></li>
        <% end_if %>

        <li class="nsw-sidenav__list-item"><a class="nsw-sidenav__link" href="$ChangePasswordLink">Change password</a></li>

    </ul>

    <% if $SignOutForm %>
        {$SignOutForm}
    <% end_if %>

</nav>

<% else %>

<nav class="nsw-sidenav" aria-labelledby="public-links">

    <div class="nsw-sidenav__header">
        <h2 id="public-links" class="nsw-sidenav__heading">
            <a href="#" class="nsw-sidenav__heading-link">Menu</a>
        </h2>
    </div>

    <ul class="nsw-sidenav__list nsw-sidenav__list--level-1">
        <li class="nsw-sidenav__list-item"><a class="nsw-sidenav__link<% if $Action =='login' %> is-current<% end_if %>" href="$SignInLink">Sign in</a></li>
        <li class="nsw-sidenav__list-item"><a class="nsw-sidenav__link<% if $Action == 'lostpassword' %> is-current<% end_if %>" href="$LostPasswordLink">Lost password</a></li>
        <li class="nsw-sidenav__list-item"><a class="nsw-sidenav__link<% if $URLSegment == '_register' %> is-current<% end_if %>" href="$RegisterLink">Register</a></li>
    </ul>

</nav>

<% end_if %>
