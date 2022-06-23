<div class="nsw-container nsw-p-top-sm nsw-p-bottom-lg">

    <div class="nsw-page-layout">

        <div class="nsw-page-layout__main">

        <% include NSWDPC/Waratah/PageContentTitle %>

        <% include NSWDPC/Waratah/PageContentAbstract %>

        </div>

        <div class="nsw-page-layout__sidebar">
        </div>

    </div>

    <div class="nsw-page-layout">

        <main id="main-content" class="nsw-page-layout__main">

            <article>

                <section class="nsw-section">
                <% include NSWDPC/Members/DirectoryMember DirectoryMember=$DirectoryMember %>
                </section>


            </article>

        </main>

        <aside class="nsw-page-layout__sidebar">

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
