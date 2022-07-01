<% if $Dialog_ID %>

<div class="nsw-block">
  <button class="nsw-button nsw-button--dark js-open-dialog-{$Dialog_ID.XML}-dialog" aria-haspopup="dialog"><% if $Dialog_ActionTitle %>{$Dialog_ActionTitle.XML}<% else %><%t nswds.LAUNCH 'Launch' %><% end_if %></button>
</div>

<div class="nsw-dialog<% if $Dialog_IsSingleAction %> nsw-dialog--single-action<% end_if %> js-dialog<% if $Dialog_IsDismissible %> js-dialog-dismiss<% end_if %>" id="{$Dialog_ID.XML}-dialog" role="dialog" aria-labelledby="{$Dialog_ID.XML}-title">

  <div class="nsw-dialog__wrapper">

    <div class="nsw-dialog__container">

      <div class="nsw-dialog__top">

        <div class="nsw-dialog__title">
          <h2 id="{$Dialog_ID.XML}-title">{$Dialog_Title.XML}</h2>
        </div>

        <% if $Dialog_IsDismissible %>
        <div class="nsw-dialog__close">
            <button class="nsw-icon-button js-close-dialog">
            <% include nswds/Icon Icon_Icon='close' %>
            <span class="sr-only"><%t nswds.CLOSE_DIALOG 'Close' %></span>
            </button>
        </div>
        <% end_if %>

      </div>

      <div class="nsw-dialog__content">
        <% if $Dialog_HTML %>
            {$Dialog_HTML}
        <% else %>
            <p>{$Dialog_Content.XML}</p>
        <% end_if %>
      </div>

    </div>

    <div class="nsw-dialog__bottom">
        <% loop $Dialog_CompletionActions %>
            <button class="nsw-button nsw-button--<% if $Brand %>{$Brand}<% else %>dark<% end_if %> js-close-dialog">{$Title.XML}</button>
        <% end_loop %>
    </div>

  </div>

</div>

<% end_if %>
