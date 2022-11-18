<% if $VisibleFields.count > 0 %>

<form $AttributesHTML>

    <% include NSWDPC/Waratah/Forms/Notifications %>

    <% if not $IsInstant %>
    <div class="nsw-filters__controls<% if $HasFilterResults %> nsw-filters__controls--active<% end_if %>">
        <button type="button">
            <% include nswds/Icon Icon_Icon='tune' %>
            <span>
            <% if $HasFilterResults %>
            <%t nswds.FILTER_RESULTS 'Filter results ({filterResults})' filterResults=$FilterFormResultCount %>
            <% else %>
            <%t nswds.FILTER_RESULTS 'Filter results' %>
            <% end_if %>
            </span>
        </button>
    </div>
    <% end_if %>

    <div class="nsw-filters__wrapper">

        <% if not $IsInstant %>
        <div class="nsw-filters__back">
            <button class="nsw-icon-button nsw-icon-button--flex js-close-sub-nav">
                <% include nswds/Icon Icon_Icon='keyboard_arrow_left' %>
                <span><%t nswds.BACK 'Back' %></span>
            </button>
        </div>
        <% end_if %>

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
        <div class="nsw-filters__accept">
            <% loop $Actions %>
                {$Field}
            <% end_loop %>
        </div>
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
