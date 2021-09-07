<% if $CurrentPage.IsLandingPage %>
    <div class="nsw-container">
<% end_if %>

<% if $Form %>
    <section>
        {$Form}
    </section>
<% end_if %>

<% if $CurrentPage.IsLandingPage %>
</div>
<% end_if %>
