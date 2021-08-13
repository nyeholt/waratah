<% if $Image || $Video %>
<figure class="nsw-media<% if $WidthOption %>nsw-media--<% if $AlignOption %>{$AlignOption}-<% end_if %>{$WidthOption.XML}<% end_if %>">
<% if $Image %>
    <% if $ImageWidth > 0 && $ImageHeight > 0 %>
    {$Image.Fill($ImageWidth, $ImageHeight)}
    <% else_if $ImageWidth > 0 %>
    {$Image.ScaleWidth($ImageWidth, $ImageHeight)}
    <% else_if $ImageHeight > 0 %>
    {$Image.ScaleHeight($ImageHeight)}
    <% else %>
    <img src="{$Image.URL}" alt="{$Image.AltText.XML}">
    <% end_if %>
    <% if $Caption %>
        <figcaption>
        {$Caption.XML}
        </figcaption>
    <% end_if %>
<% else_if $Video %>
  <div class="nsw-media__video">
    {$EmbedCode.RAW}
  </div>
  <% if $Caption %>
      <figcaption>
      {$Caption.XML}
      </figcaption>
  <% end_if %>
<% end_if %>
</figure>
<% end_if %>
