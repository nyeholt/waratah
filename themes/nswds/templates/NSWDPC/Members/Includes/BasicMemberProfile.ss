<h3><%t NSWDPC\\Members\\Configuration.BASIC_MEMBER_PROFILE_TITLE 'Current profile information' %></h3>

<% if $Member %>
<% with $Member %>
<p><strong><%t NSWDPC\\Members\\Configuration.PROFILE_NAME 'Name' %></strong>: {$Name.XML}</p>
<p><strong><%t NSWDPC\\Members\\Configuration.PROFILE_EMAIL 'E-mail' %></strong>: {$Email.XML}</p>
<% end_with %>

<% end_if %>
