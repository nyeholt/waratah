<?php
use SilverStripe\Forms\HTMLEditor\HtmlEditorConfig;
use SilverStripe\Forms\HTMLEditor\TinyMCEConfig;

TinyMCEConfig::get('cms')->removeButtons('underline', 'alignjustify');

TinyMCEConfig::get('cms')->enablePlugins(
    'visualblocks',
    'hr',
    'anchor',
    'wordcount',
    'lists',
    'advlist'
);

TinyMCEConfig::get('cms')->insertButtonsAfter(
    'removeformat',
    '|',
    'superscript',
    'subscript',
    'blockquote',
    'hr'
);
TinyMCEConfig::get('cms')->addButtonsToLine(1, '|', 'visualblocks');

TinyMCEConfig::get('cms')->insertButtonsAfter('formatselect', 'styleselect');
TinyMCEConfig::get('cms')->insertButtonsAfter('unlink', 'anchor');

TinyMCEConfig::get('cms')->setOptions([
    'extended_valid_elements' => 'ol[start]',
]);

HtmlEditorConfig::get('cms')->setOption('theme_advanced_styles', 'highlight=highlight;no-border=no-border,break=break');

HtmlEditorConfig::get('cms')->setOption('table_class_list', [
    [
        'title' => 'Table',
        'value' => 'nsw-table'
    ],
    [
        'title' => 'Striped',
        'value' => 'nsw-table nsw-table--striped'
    ],
    [
        'title' => 'Bordered',
        'value' => 'nsw-table nsw-table--bordered'
    ],
    [
        'title' => 'Stripe and bordered',
        'value' => 'nsw-table nsw-table--striped nsw-table--bordered'
    ]
]);
