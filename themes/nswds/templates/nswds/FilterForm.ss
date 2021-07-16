<% if $VisibleFields.count > 0 %>

<form $AttributesHTML>


    <% if $MessageType == 'good' %>
    <% include nswds/InPageNotification Icon='check_circle', Level='success', MessageTitle='Success', Message=$Message %>
    <% else_if $MessageType == 'warning' %>
    <% include nswds/InPageNotification Icon='error', Level='warning', MessageTitle='Warning', Message=$Message %>
    <% else_if $MessageType == 'error' %>
    <% include nswds/InPageNotification Icon='cancel', Level='error', MessageTitle='Error', Message=$Message %>
    <% else %>
    <% include nswds/InPageNotification Icon='info', Level='info', MessageTitle='Information', Message=$Message %>
    <% end_if %>

    <div class="nsw-filters__controls">
        <button>
            <% include nswds/Icon Icon='tune' %>
            <span><%t nswds.FILTER_RESULTS 'Filter results' %></span>
        </button>
    </div>

    <div class="nsw-filters__wrapper">

        <div class="nsw-filters__back">
            <button>
                <% include nswds/Icon Icon='keyboard_arrow_left' %>
                <span><%t nswds.BACK 'Back' %></span>
            </button>
        </div>

        <div class="nsw-filters__title">

            <% if $Legend %>
            {$Legend.XML}
            <% else %>
            <%t nswds.FILTER_RESULTS 'Filter results' %>
            <% end_if %>
        </div>

        <div class="nsw-filters__list">

            <% loop $VisibleFields %>
            <div class="nsw-filters__item">
                {$FieldHolder}
            </div>
            <% end_loop %>

            <% loop $HiddenFields %>
            {$FieldHolder}
            <% end_loop %>

        </div>

        <% if $Actions %>
        <% loop $Actions %>
        <div class="nsw-filters__accept">
            {$Field}
        </div>
        <% end_loop %>
        <div class="nsw-filters__cancel">
            <button type="reset"><%t nswds.CLEAR_ALL_FILTERS 'Clear all filters' %></button>
        </div>
        <% end_if %>


    </div>

</form>

<% end_if %>
