<% if $Member %>
<nav class="nsw-side-nav" aria-labelledby="profile-links">

    <div class="nsw-side-nav__header">
        <h2 id="profile-links" class="nsw-side-nav__heading">
        <a href="{$EditProfileLink.XML}" class="nsw-side-nav__heading-link"><%t nswds.PROFILE_LINKS 'Profile' %></a>
        </h2>
    </div>

    <ul class="nsw-side-nav__list nsw-side-nav__list--level-1">

        <% if $ProfilePages %>
            <li class="nsw-side-nav__list-item"><a class="nsw-side-nav__link" href="$PageLink">Pages</a></li>
        <% end_if %>

        <% if $ProfileFolders %>
            <li class="nsw-side-nav__list-item"><a class="nsw-side-nav__link" href="$FolderLink">Files</a></li>
        <% end_if %>

        <% if $DirectoryLink %>
            <li class="nsw-side-nav__list-item"><a class="nsw-side-nav__link" href="$DirectoryLink">Directory</a></li>
        <% end_if %>

        <% if $MFALink %>
            <li class="nsw-side-nav__list-item"><a class="nsw-side-nav__link" href="$MFALink">Multi-Factor Authentication (MFA)</a></li>
        <% end_if %>

        <li class="nsw-side-nav__list-item"><a class="nsw-side-nav__link" href="$ChangePasswordLink">Change password</a></li>

    </ul>

    <% if $SignOutForm %>
        {$SignOutForm}
    <% end_if %>

</nav>

<% else %>

<nav class="nsw-side-nav" aria-labelledby="public-links">

    <div class="nsw-side-nav__header">
        <h2 id="public-links" class="nsw-side-nav__heading">
            <a href="#" class="nsw-side-nav__heading-link">Menu</a>
        </h2>
    </div>

    <ul class="nsw-side-nav__list nsw-side-nav__list--level-1">
        <li class="nsw-side-nav__list-item"><a class="nsw-side-nav__link<% if $Action =='login' %> is-current<% end_if %>" href="$SignInLink">Sign in</a></li>
        <li class="nsw-side-nav__list-item"><a class="nsw-side-nav__link<% if $Action == 'lostpassword' %> is-current<% end_if %>" href="$LostPasswordLink">Lost password</a></li>
        <li class="nsw-side-nav__list-item"><a class="nsw-side-nav__link<% if $URLSegment == '_register' %> is-current<% end_if %>" href="$RegisterLink">Register</a></li>
    </ul>

</nav>

<% end_if %>
