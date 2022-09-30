<% if $SitewideNotice %>

    <% with $SitewideNotice %>

        <% include NSWDPC/Waratah/Modal Modal_ModalID=$ModalId, Modal_ExtraClass=$ExtraClass, Modal_ShowOnLoad='1', Modal_AutoCloseAfter=$AutoCloseAfter, Modal_Title=$Title, Modal_ShowTitle=$ShowTitle, Modal_Content=$Description %>

    <% end_with %>

<% end_if %>
