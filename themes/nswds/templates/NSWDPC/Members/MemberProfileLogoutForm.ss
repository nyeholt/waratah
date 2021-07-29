<% if $Top.CurrentMember %>
<div class="nsw-callout">
    <% include nswds/Icon Icon='person', IconExtraClass='nsw-callout__icon' %>
    <div class="nsw-callout__content">
        <h4 class="nsw-callout__title"><%t bandc.LOGGED_IN 'Logged in' %></h4>
        <% with $Top.CurrentMember %>
            <p><%t bandc.LOGGED_IN_AS 'You are logged in as {name}' name=$FirstName %></p>
        <% end_with %>

        <% include SilverStripe/Forms/Form HideFormWrapper=1 %>

    </div>
</div>
<% end_if %>
