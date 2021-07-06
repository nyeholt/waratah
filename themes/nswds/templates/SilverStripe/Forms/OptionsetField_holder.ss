<div id="$HolderID" class="nsw-form-group">

    <fieldset class="nsw-form-fieldset">

        <legend>
           <% if $Title %><span class="nsw-form-legend-text">$Title</span><% end_if %>
           <% if $Description %><span class="nsw-form-helper">$Description</span><% end_if %>
           <% if $RightTitle %><label class="nsw-form-legend-text right">$RightTitle</label><% end_if %>
           <% if $Message %>
               <% if $MessageType == 'good' %>
                   <% include FormFieldNotification Icon='check_circle', Level='success', Message=$Message %>
               <% else_if $MessageType == 'warning' %>
                   <% include FormFieldNotification Icon='error', Level='warning', Message=$Message %>
               <% else_if $MessageType == 'error' %>
                   <% include FormFieldNotification Icon='cancel', Level='error', Message=$Message %>
               <% else %>
                   <% include FormFieldNotification Icon='info', Level='info', Message=$Message %>
               <% end_if %>
           <% end_if %>
         </legend>

         <div class="nsw-form-radio">
         {$Field}
         </div>

    </fieldset>

</div>
