<% if $Form %>
<% if $Top.IsLandingPage %>
    <div class="nsw-container">
<% end_if %>

    <section class="nsw-section nsw-section--half-padding">
        {$Form}
    </section>

<% if $Top.IsLandingPage %>
</div>
<% end_if %>
<% end_if %>
