<% if $Form %>
<% if $CurrentPage.IsLandingPage %>
    <div class="nsw-container">
<% end_if %>

    <section>
        {$Form}
    </section>

<% if $CurrentPage.IsLandingPage %>
</div>
<% end_if %>
<% end_if %>
