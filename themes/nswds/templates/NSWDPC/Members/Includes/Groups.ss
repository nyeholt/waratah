<% include NSWDPC/Members/ContainerStart %>

                <% include NSWDPC/Waratah/PageElemental %>

                <% include nswds/Callout Callout_Title='Help', Callout_Content='In this section you can request access to the listed groups, remove your access requests or remove yourself from current group memberships' %>

                <% if $GroupsForm %>
                    {$GroupsForm}
                <% end_if %>

                <% if $PendingForm %>
                    {$PendingForm}
                <% end_if %>

<% include NSWDPC/Members/ContainerEnd %>
