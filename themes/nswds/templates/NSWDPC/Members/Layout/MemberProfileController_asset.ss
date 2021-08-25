<div class="nsw-container nsw-p-top-sm nsw-p-bottom-lg">

    <div class="nsw-page-layout">

        <div class="nsw-page-layout__sidebar">

            <% include NSWDPC/Members/Links %>

        </div>

        <main id="main-content" class="nsw-page-layout__main">

            <article>

                <div class="nsw-block">

                    <% include NSWDPC/Waratah/PageContentTitle %>

                    <% include NSWDPC/Waratah/PageContentAbstract %>

                    <% include NSWDPC/Members/Message %>

                </div>

                <% if $Member %>

                    <% if $ProfileFolders %>

                        <% include nswds/InPageNotification InPageNotification_Level='info', InPageNotification_Icon='article', InPageNotification_MessageTitle='Information', InPageNotification_Message='You have access to the following assets on this website' %>

                        <% loop $ProfileFolders %>

                            <div class="folder profile-asset">

                            <h3>{$NiceTitle.XML}</h3>
                            <% if $DownloadableFiles %>
                                <ol>
                                <% loop $DownloadableFiles %>
                                <li>
                                    <a href="{$Link}">{$Title.XML}</a>
                                    <br>Last updated {$LastEdited.FormatFromSettings}
                                    <br>{$Size.XML}, {$Extension.XML} - {$AppCategory.XML}
                                </li>
                                <% end_loop %>
                                </ol>
                            <% else %>
                                <p>No files are available in this folder</p>
                            <% end_if %>
                            </div>
                        <% end_loop %>

                    <% else %>

                        <% include nswds/InPageNotification InPageNotification_Level='info', InPageNotification_Icon='article', InPageNotification_MessageTitle='Information', InPageNotification_Message='Nothing is available here, at the moment' %>

                    <% end_if %>

                <% else %>
                    <% include nswds/InPageNotification InPageNotification_Level='warning', InPageNotification_Icon='warning', InPageNotification_MessageTitle='Information', InPageNotification_Message='Access denied' %>
                <% end_if %>

            </article>

        <main>

    </div>

</div>
