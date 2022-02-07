<% if $VisibleFields.count > 0 %>

<form $AttributesHTML>


    <% if $MessageType == 'good' %>
        <% include nswds/InPageNotification InPageNotification_Icon='check_circle', InPageNotification_Level='success', InPageNotification_Title='Success', InPageNotification_Content=$Message %>
    <% else_if $MessageType == 'warning' %>
        <% include nswds/InPageNotification InPageNotification_Icon='error', InPageNotification_Level='warning', InPageNotification_Title='Warning', InPageNotification_Content=$Message %>
    <% else_if $MessageType == 'error' %>
        <% include nswds/InPageNotification InPageNotification_Icon='cancel', InPageNotification_Level='error', InPageNotification_Title='Error', InPageNotification_Content=$Message %>
    <% else %>
        <% include nswds/InPageNotification InPageNotification_Icon='info', InPageNotification_Level='info', InPageNotification_Title='Information', InPageNotification_Content=$Message %>
    <% end_if %>

    <div class="nsw-filters__controls">
        <button>
            <% include nswds/Icon Icon_Icon='tune' %>
            <span><%t nswds.FILTER_RESULTS 'Filter results' %></span>
        </button>
    </div>

    <div class="nsw-filters__wrapper">

        <div class="nsw-filters__back">
            <button>
                <% include nswds/Icon Icon_Icon='keyboard_arrow_left' %>
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
        <% if $ClearLink %>
            <%-- a link to clear results and reset to an unfiltered listing --%>
            <a href="{$ClearLink}"><%t nswds.CLEAR_FILTERS 'Clear all filters' %></a>
        <% else %>
            <button type="reset"><%t nswds.CLEAR_ALL_FILTERS 'Clear all filters' %></button>
        <% end_if %>
        </div>
        <% end_if %>


    </div>

</form>

<% end_if %>
