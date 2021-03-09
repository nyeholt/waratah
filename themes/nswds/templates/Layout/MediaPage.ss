<h1>$Title.XML</h1>
<% if $Date %>
    <p>
        {$Date.Full}
    </p>
<% end_if %>
<% if $Abstract %>
    <p class="nsw-intro">$Abstract.ContextSummary(150)</p>
<% end_if %>
<% include PageElemental %>
<% include PageForm %>
