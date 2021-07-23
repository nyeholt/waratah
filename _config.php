<?php
use SilverStripe\Forms\HTMLEditor\HtmlEditorConfig;

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
