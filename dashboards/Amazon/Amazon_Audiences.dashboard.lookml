- dashboard: amazon_audiences
  title: Amazon Audiences
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  filters_location_top: false
  preferred_slug: RQeTXyhkIcPYeJG5SFwIAz
  elements:
  - title: In-market
    name: In-market
    model: amazon_v1
    explore: overlapping_audiences
    type: looker_grid
    fields: [overlapping_audiences.name, overlapping_audiences.average_bound, overlapping_audiences.affinity_total,
      overlapping_audiences.lowerbound, overlapping_audiences.upperbound]
    filters:
      overlapping_audiences.category: In-market
    sorts: [overlapping_audiences.affinity_total desc]
    limit: 15
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      overlapping_audiences.average_bound: Average Daily Reach
      overlapping_audiences.affinity_total: Overlap Index
    series_column_widths:
      overlapping_audiences.affinity_total: 175
      overlapping_audiences.average_bound: 108
      overlapping_audiences.name: 250
    series_cell_visualizations:
      overlapping_audiences.average_bound:
        is_active: false
      overlapping_audiences.affinity_total:
        is_active: true
        palette:
          palette_id: a7576fbb-4f74-a1ad-5356-7376554dd492
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffe6bf"
          - "#e89c35"
          - "#e87712"
    series_text_format:
      overlapping_audiences.average_bound:
        align: left
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_value_format:
      overlapping_audiences.affinity_total:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
    hidden_fields: [overlapping_audiences.lowerbound, overlapping_audiences.upperbound]
    series_types: {}
    defaults_version: 1
    listen:
      Segment Size: overlapping_audiences.average_bound
      Audience Name: overlapping_audiences.requested_audience_name
      Overlapping Audience: overlapping_audiences.name
    row: 2
    col: 0
    width: 11
    height: 8
  - title: Interests
    name: Interests
    model: amazon_v1
    explore: overlapping_audiences
    type: looker_grid
    fields: [overlapping_audiences.name, overlapping_audiences.category, overlapping_audiences.average_bound,
      overlapping_audiences.affinity_total, overlapping_audiences.lowerbound, overlapping_audiences.upperbound]
    filters:
      overlapping_audiences.category: Interest
    sorts: [overlapping_audiences.affinity_total desc]
    limit: 15
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      overlapping_audiences.average_bound: Average Daily Reach
      overlapping_audiences.affinity_total: Overlap Index
    series_column_widths:
      overlapping_audiences.name: 250
      overlapping_audiences.average_bound: 108
      overlapping_audiences.affinity_total: 175
    series_cell_visualizations:
      overlapping_audiences.average_bound:
        is_active: false
      overlapping_audiences.affinity_total:
        is_active: true
        palette:
          palette_id: cea00ed7-940d-027c-c337-45330df07ab5
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffe6bf"
          - "#e89c35"
          - "#e87712"
    series_value_format:
      overlapping_audiences.affinity_total:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
    hidden_fields: [overlapping_audiences.lowerbound, overlapping_audiences.upperbound,
      overlapping_audiences.category]
    series_types: {}
    defaults_version: 1
    listen:
      Segment Size: overlapping_audiences.average_bound
      Audience Name: overlapping_audiences.requested_audience_name
      Overlapping Audience: overlapping_audiences.name
    row: 10
    col: 0
    width: 11
    height: 8
  - title: Life Events
    name: Life Events
    model: amazon_v1
    explore: overlapping_audiences
    type: looker_grid
    fields: [overlapping_audiences.name, overlapping_audiences.category, overlapping_audiences.average_bound,
      overlapping_audiences.affinity_total, overlapping_audiences.lowerbound, overlapping_audiences.upperbound]
    filters:
      overlapping_audiences.category: Life event
    sorts: [overlapping_audiences.affinity_total desc]
    limit: 10
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      overlapping_audiences.average_bound: Average Daily Reach
      overlapping_audiences.affinity_total: Overlap Index
    series_column_widths:
      overlapping_audiences.name: 250
      overlapping_audiences.affinity_total: 175
      overlapping_audiences.average_bound: 108
    series_cell_visualizations:
      overlapping_audiences.average_bound:
        is_active: false
      overlapping_audiences.affinity_total:
        is_active: true
        palette:
          palette_id: 25e5914b-2c0d-2938-c94f-2781fc1e7c32
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffe6bf"
          - "#e89c35"
          - "#e87712"
    series_text_format:
      overlapping_audiences.name: {}
    header_font_color: ''
    header_background_color: ''
    series_value_format:
      overlapping_audiences.affinity_total:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
    hidden_fields: [overlapping_audiences.lowerbound, overlapping_audiences.upperbound,
      overlapping_audiences.category]
    series_types: {}
    defaults_version: 1
    listen:
      Segment Size: overlapping_audiences.average_bound
      Audience Name: overlapping_audiences.requested_audience_name
      Overlapping Audience: overlapping_audiences.name
    row: 18
    col: 12
    width: 11
    height: 8
  - title: Lifestyle
    name: Lifestyle
    model: amazon_v1
    explore: overlapping_audiences
    type: looker_grid
    fields: [overlapping_audiences.name, overlapping_audiences.category, overlapping_audiences.average_bound,
      overlapping_audiences.affinity_total, overlapping_audiences.lowerbound, overlapping_audiences.upperbound]
    filters:
      overlapping_audiences.category: Lifestyle
    sorts: [overlapping_audiences.affinity_total desc]
    limit: 15
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      overlapping_audiences.average_bound: Average Daily Reach
      overlapping_audiences.affinity_total: Overlap Index
    series_column_widths:
      overlapping_audiences.name: 250
      overlapping_audiences.affinity_total: 175
      overlapping_audiences.average_bound: 108
    series_cell_visualizations:
      overlapping_audiences.average_bound:
        is_active: false
      overlapping_audiences.affinity_total:
        is_active: true
        palette:
          palette_id: bc733912-7d95-c8fa-2e58-17dfb68df9ca
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffe6bf"
          - "#e89c35"
          - "#e87712"
    series_value_format:
      overlapping_audiences.affinity_total:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
      overlapping_audiences.average_bound:
        name: decimal_0
        decimals: '0'
        format_string: "#,##0"
        label: Decimals (0)
        label_prefix: Decimals
    hidden_fields: [overlapping_audiences.lowerbound, overlapping_audiences.upperbound,
      overlapping_audiences.category]
    series_types: {}
    defaults_version: 1
    listen:
      Segment Size: overlapping_audiences.average_bound
      Audience Name: overlapping_audiences.requested_audience_name
      Overlapping Audience: overlapping_audiences.name
    row: 2
    col: 12
    width: 11
    height: 8
  - title: Lookalikes
    name: Lookalikes
    model: amazon_v1
    explore: overlapping_audiences
    type: looker_grid
    fields: [overlapping_audiences.name, overlapping_audiences.category, overlapping_audiences.average_bound,
      overlapping_audiences.affinity_total, overlapping_audiences.lowerbound, overlapping_audiences.upperbound]
    filters: {}
    sorts: [overlapping_audiences.affinity_total desc]
    limit: 15
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      overlapping_audiences.average_bound: Average Daily Reach
      overlapping_audiences.affinity_total: Overlap Index
    series_column_widths:
      overlapping_audiences.affinity_total: 175
      overlapping_audiences.name: 250
      overlapping_audiences.average_bound: 108
    series_cell_visualizations:
      overlapping_audiences.average_bound:
        is_active: false
      overlapping_audiences.affinity_total:
        is_active: true
        palette:
          palette_id: 76db76c5-cb58-9b43-08b5-8d6a05e95f8c
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffe6bf"
          - "#e89c35"
          - "#e87712"
    series_value_format:
      overlapping_audiences.affinity_total:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
    hidden_fields: [overlapping_audiences.lowerbound, overlapping_audiences.upperbound,
      overlapping_audiences.category]
    series_types: {}
    defaults_version: 1
    listen:
      Segment Size: overlapping_audiences.average_bound
      Audience Name: overlapping_audiences.requested_audience_name
      Overlapping Audience: overlapping_audiences.name
    row: 18
    col: 0
    width: 11
    height: 8
  - title: Demographics
    name: Demographics
    model: amazon_v1
    explore: overlapping_audiences
    type: looker_grid
    fields: [overlapping_audiences.name, overlapping_audiences.category, overlapping_audiences.average_bound,
      overlapping_audiences.affinity_total, overlapping_audiences.lowerbound, overlapping_audiences.upperbound]
    filters:
      audiences.audience_category_level_1: Demographic
    sorts: [overlapping_audiences.affinity_total desc]
    limit: 15
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      overlapping_audiences.average_bound: Average Daily Reach
      overlapping_audiences.affinity_total: Overlap Index
    series_column_widths:
      overlapping_audiences.name: 250
      overlapping_audiences.affinity_total: 175
      overlapping_audiences.average_bound: 108
    series_cell_visualizations:
      overlapping_audiences.average_bound:
        is_active: false
      overlapping_audiences.affinity_total:
        is_active: true
        palette:
          palette_id: 93adec3a-559c-95c3-6ef2-0f511c1a624e
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffe6bf"
          - "#e89c35"
          - "#e87712"
    series_value_format:
      overlapping_audiences.affinity_total:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
    hidden_fields: [overlapping_audiences.lowerbound, overlapping_audiences.upperbound,
      overlapping_audiences.category]
    series_types: {}
    defaults_version: 1
    listen:
      Segment Size: overlapping_audiences.average_bound
      Audience Name: overlapping_audiences.requested_audience_name
      Overlapping Audience: overlapping_audiences.name
    row: 10
    col: 12
    width: 11
    height: 8
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 26
    col: 3
    width: 21
    height: 2
  - type: button
    name: button_599
    rich_content_json: '{"text":"Top 15 Amazon Segments by category","description":"","newTab":true,"alignment":"center","size":"large","style":"OUTLINED","color":"#E8710A"}'
    row: 0
    col: 4
    width: 13
    height: 2
  - title: Third-party
    name: Third-party
    model: amazon_v1
    explore: overlapping_audiences
    type: looker_grid
    fields: [overlapping_audiences.name, overlapping_audiences.category, overlapping_audiences.average_bound,
      overlapping_audiences.affinity_total, overlapping_audiences.lowerbound, overlapping_audiences.upperbound]
    filters:
      overlapping_audiences.category: Third-party
    sorts: [overlapping_audiences.affinity_total desc]
    limit: 15
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      overlapping_audiences.average_bound: Average Daily Reach
      overlapping_audiences.affinity_total: Overlap Index
    series_column_widths:
      overlapping_audiences.name: 250
      overlapping_audiences.average_bound: 108
      overlapping_audiences.affinity_total: 175
    series_cell_visualizations:
      overlapping_audiences.average_bound:
        is_active: false
      overlapping_audiences.affinity_total:
        is_active: true
        palette:
          palette_id: 8df0eebd-5160-67c7-bd7a-acc3c8945449
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffe6bf"
          - "#e89c35"
          - "#e87712"
    series_value_format:
      overlapping_audiences.affinity_total:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
    hidden_fields: [overlapping_audiences.lowerbound, overlapping_audiences.upperbound,
      overlapping_audiences.category]
    series_types: {}
    defaults_version: 1
    listen:
      Segment Size: overlapping_audiences.average_bound
      Audience Name: overlapping_audiences.requested_audience_name
      Overlapping Audience: overlapping_audiences.name
    row: 28
    col: 0
    width: 11
    height: 8
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<img src=\"http://logo-logos.com/2016/12/Amazon_logo.png\" width=\"\
      200\" height=\"70\"/>\n\n"
    row: 0
    col: 17
    width: 7
    height: 2
  filters:
  - name: Audience Category
    title: Audience Category
    type: field_filter
    default_value: In-market
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: []
    field: overlapping_audiences.req_audience_category
  - name: Category Level 2
    title: Category Level 2
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: [Audience Category]
    field: overlapping_audiences.requested_audience_category_level_2
  - name: Category Level 3
    title: Category Level 3
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: [Audience Category, Category Level 2]
    field: overlapping_audiences.requested_audience_category_level_3
  - name: Category Level 4
    title: Category Level 4
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: [Audience Category, Category Level 2, Category Level 3]
    field: overlapping_audiences.requested_audience_category_level_4
  - name: Category Level 5
    title: Category Level 5
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: [Audience Category, Category Level 2, Category Level 3, Category
        Level 4]
    field: overlapping_audiences.requested_audience_category_level_5
  - name: Category Level 6
    title: Category Level 6
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: [Audience Category, Category Level 2, Category Level 3, Category
        Level 4, Category Level 5]
    field: overlapping_audiences.requested_audience_category_level_6
  - name: Category Level 7
    title: Category Level 7
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: [Audience Category, Category Level 2, Category Level 3, Category
        Level 4, Category Level 5, Category Level 6]
    field: overlapping_audiences.requested_audience_category_level_7
  - name: Audience Name
    title: Audience Name
    type: field_filter
    default_value: "^ Cell Phones"
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: [Audience Category, Category Level 2, Category Level 3, Category
        Level 4, Category Level 5, Category Level 7, Category Level 6]
    field: overlapping_audiences.requested_audience_name
  - name: Index
    title: Index
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: []
    field: overlapping_audiences.affinity_total
  - name: Segment Size
    title: Segment Size
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: []
    field: audiences.avg_bound
  - name: Overlapping Audience
    title: Overlapping Audience
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: []
    field: overlapping_audiences.name
