<div class="nsw-container nsw-p-top-sm nsw-p-bottom-lg">
    <div class="nsw-page-layout">

        <div class="nsw-page-layout__sidebar">

            <% include MemberProfileLinks %>

        </div>

        <main id="main-content" class="nsw-page-layout__main">

            <article>

                <div class="nsw-block">

                    <% include PageContentTitle %>

                    <% include PageContentAbstract %>

                    <% include MemberProfileMessage %>

                </div>

                <%-- profile MFA layout --%>
                <% include MemberProfileMfaReset %>

            </article>
        </main>

    </div>

</div>
