<% if $Form %>
<% if $Top.IsLandingPage %>
    <div class="nsw-container">
<% end_if %>

    <section>
        {$Form}
    </section>

<% if $Top.IsLandingPage %>
</div>
<% end_if %>
<% end_if %>
