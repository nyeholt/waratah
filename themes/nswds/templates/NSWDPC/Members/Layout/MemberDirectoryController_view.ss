<%-- this is a different layout to the other pages --%>

<div class="nsw-container nsw-p-top-sm nsw-p-bottom-lg">

    <div class="nsw-layout">

        <div class="nsw-layout__main">

            <% include NSWDPC/Waratah/PageContentTitle %>

            <% include NSWDPC/Waratah/PageContentAbstract %>

        </div>

        <div class="nsw-layout__sidebar nsw-layout__sidebar--desktop">
        </div>

    </div>

    <div class="nsw-layout">

        <main id="main-content" class="nsw-layout__main">

            <article>

                <div class="nsw-block">
                <% include NSWDPC/Members/DirectoryMember DirectoryMember=$DirectoryMember %>
                </div>

            </article>

        </main>

        <aside class="nsw-layout__sidebar">

            <% with $DirectoryMember %>
                <% with $ProfileProvider %>
                <% if $ProfileImage %>
                <figure class="nsw-media">
                    <div class="img-fluid">
                    {$ProfileImage.ScaleWidth(900)}
                    </div>
                </figure>
                <% end_if %>
                <% end_with %>
            <% end_with %>

        </aside>

    </div>

</div>
