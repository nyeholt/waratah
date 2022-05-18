<h3><%t NSWDPC\\Configuration.BASIC_MEMBER_PROFILE_TITLE 'Current profile information' %></h3>

<% if $Member %>
<% with $Member %>
<p><strong><%t NSWDPC\\Configuration.PROFILE_NAME 'Name' %></strong>: {$Name.XML}</p>
<p><strong><%t NSWDPC\\Configuration.PROFILE_EMAIL 'E-mail' %></strong>: {$Email.XML}</p>
<% end_with %>

<% end_if %>
