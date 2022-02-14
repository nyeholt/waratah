
<% if $SubscribeForm %>

    <div class="nsw-grid">

        <div class="nsw-col nsw-col-6">

            <% include NSWDPC/Waratah/ElementTitle ShowTitle=$ShowTitle, Title=$Title, HeadingLevel=$HeadingLevel %>

            <% if $BeforeFormContent %>
                <div class="nsw-intro">
                    {$BeforeFormContent}
                </div>
            <% end_if %>

            <div class="nsw-m-top-sm">
                {$SubscribeForm}
            </div>

            <% if $BeforeFormContent %>
                <div class="nsw-m-top-sm">
                    {$AfterFormContent}
                </div>
            <% end_if %>

        </div>

        <% if $Image %>
        <div class="nsw-col nsw-col-6">
            {$Image.FocusFillMax(720,600)}
        </div>
        <% end_if %>

    </div>

<% end_if %>
