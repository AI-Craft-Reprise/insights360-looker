- dashboard: overlapping_audiences
  title: Overlapping Audiences
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  filters_location_top: false
  preferred_slug: Yb9KN28QQGSbWolUm7dyaw
  elements:
  - title: Amazon_v1
    name: Amazon_v1
    model: amazon_v1
    explore: overlapping_audiences
    type: looker_grid
    fields: [overlapping_audiences.name, audiences.level_1, audiences.level_2, audiences.level_3,
      audiences.level_4, audiences.level_5, audiences.level_6, audiences.level_7,
      audiences.level_8, audiences.level_9, overlapping_audiences.lowerbound, overlapping_audiences.upperbound,
      overlapping_audiences.average_bound, overlapping_audiences.affinity_total]
    sorts: [overlapping_audiences.affinity_total desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
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
      overlapping_audiences.category: Segment Category
      overlapping_audiences.average_bound: Segment Size
      overlapping_audiences.affinity_total: Overlap Index
    series_cell_visualizations:
      overlapping_audiences.average_bound:
        is_active: true
      overlapping_audiences.affinity_total:
        is_active: true
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
    title_hidden: true
    listen:
      Category Level 1: overlapping_audiences.level_1
      Category Level 2: overlapping_audiences.level_2
      Category Level 3: overlapping_audiences.level_3
      Audience Name: overlapping_audiences.req_audience_name
    row: 15
    col: 0
    width: 24
    height: 12
  - title: Top 10 In-market Audiences
    name: Top 10 In-market Audiences
    model: amazon_v1
    explore: overlapping_audiences
    type: looker_grid
    fields: [overlapping_audiences.name, overlapping_audiences.category, overlapping_audiences.average_bound,
      overlapping_audiences.affinity_total, overlapping_audiences.lowerbound, overlapping_audiences.upperbound]
    filters:
      overlapping_audiences.filter_category: In-market
    sorts: [overlapping_audiences.affinity_total desc]
    limit: 10
    show_view_names: false
    show_row_numbers: true
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
      overlapping_audiences.average_bound: Segment Size
      overlapping_audiences.affinity_total: Overlap Index
    series_column_widths:
      overlapping_audiences.average_bound: 100
      overlapping_audiences.affinity_total: 200
    series_cell_visualizations:
      overlapping_audiences.average_bound:
        is_active: false
      overlapping_audiences.affinity_total:
        is_active: true
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
      Category Level 1: overlapping_audiences.level_1
      Category Level 2: overlapping_audiences.level_2
      Category Level 3: overlapping_audiences.level_3
      Audience Name: overlapping_audiences.req_audience_name
    row: 2
    col: 0
    width: 12
    height: 6
  - title: Top 10 Interest Audiences
    name: Top 10 Interest Audiences
    model: amazon_v1
    explore: overlapping_audiences
    type: looker_grid
    fields: [overlapping_audiences.name, overlapping_audiences.category, overlapping_audiences.average_bound,
      overlapping_audiences.affinity_total, overlapping_audiences.lowerbound, overlapping_audiences.upperbound]
    filters:
      overlapping_audiences.filter_category: Interest
    sorts: [overlapping_audiences.affinity_total desc]
    limit: 10
    show_view_names: false
    show_row_numbers: true
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
      overlapping_audiences.average_bound: Segment Size
      overlapping_audiences.affinity_total: Overlap Index
    series_column_widths:
      overlapping_audiences.average_bound: 100
      overlapping_audiences.affinity_total: 200
    series_cell_visualizations:
      overlapping_audiences.average_bound:
        is_active: false
      overlapping_audiences.affinity_total:
        is_active: true
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
      Category Level 1: overlapping_audiences.level_1
      Category Level 2: overlapping_audiences.level_2
      Category Level 3: overlapping_audiences.level_3
      Audience Name: overlapping_audiences.req_audience_name
    row: 8
    col: 0
    width: 12
    height: 6
  - title: Life Event Audiences
    name: Life Event Audiences
    model: amazon_v1
    explore: overlapping_audiences
    type: looker_grid
    fields: [overlapping_audiences.name, overlapping_audiences.category, overlapping_audiences.average_bound,
      overlapping_audiences.affinity_total, overlapping_audiences.lowerbound, overlapping_audiences.upperbound]
    filters:
      overlapping_audiences.filter_category: Life event
    sorts: [overlapping_audiences.affinity_total desc]
    limit: 10
    show_view_names: false
    show_row_numbers: true
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
      overlapping_audiences.average_bound: Segment Size
      overlapping_audiences.affinity_total: Overlap Index
    series_column_widths:
      overlapping_audiences.average_bound: 100
      overlapping_audiences.affinity_total: 200
    series_cell_visualizations:
      overlapping_audiences.average_bound:
        is_active: false
      overlapping_audiences.affinity_total:
        is_active: true
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
      Category Level 1: overlapping_audiences.level_1
      Category Level 2: overlapping_audiences.level_2
      Category Level 3: overlapping_audiences.level_3
      Audience Name: overlapping_audiences.req_audience_name
    row: 8
    col: 12
    width: 12
    height: 6
  - title: Top 10 Lifestyle Audiences
    name: Top 10 Lifestyle Audiences
    model: amazon_v1
    explore: overlapping_audiences
    type: looker_grid
    fields: [overlapping_audiences.name, overlapping_audiences.category, overlapping_audiences.average_bound,
      overlapping_audiences.affinity_total, overlapping_audiences.lowerbound, overlapping_audiences.upperbound]
    filters:
      overlapping_audiences.filter_category: Lifestyle
    sorts: [overlapping_audiences.affinity_total desc]
    limit: 10
    show_view_names: false
    show_row_numbers: true
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
      overlapping_audiences.average_bound: Segment Size
      overlapping_audiences.affinity_total: Overall Index
    series_column_widths:
      overlapping_audiences.average_bound: 100
      overlapping_audiences.affinity_total: 200
    series_cell_visualizations:
      overlapping_audiences.average_bound:
        is_active: false
      overlapping_audiences.affinity_total:
        is_active: true
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
      Category Level 1: overlapping_audiences.level_1
      Category Level 2: overlapping_audiences.level_2
      Category Level 3: overlapping_audiences.level_3
      Audience Name: overlapping_audiences.req_audience_name
    row: 2
    col: 12
    width: 12
    height: 6
  - name: Full Overlapping Audience List
    type: text
    title_text: Full Overlapping Audience List
    subtitle_text: ''
    body_text: ''
    row: 14
    col: 0
    width: 24
    height: 1
  - title: Audience Name
    name: Audience Name
    model: amazon_v1
    explore: overlapping_audiences
    type: single_value
    fields: [overlapping_audiences.req_audience_name]
    sorts: [overlapping_audiences.req_audience_name]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    defaults_version: 1
    series_types: {}
    listen:
      Category Level 1: overlapping_audiences.level_1
      Category Level 2: overlapping_audiences.level_2
      Category Level 3: overlapping_audiences.level_3
      Audience Name: overlapping_audiences.req_audience_name
    row: 0
    col: 0
    width: 24
    height: 2
  filters:
  - name: Category Level 1
    title: Category Level 1
    type: field_filter
    default_value: In-market
    allow_multiple_values: true
    required: true
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: []
    field: overlapping_audiences.level_1
  - name: Category Level 2
    title: Category Level 2
    type: field_filter
    default_value: Education
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: [Category Level 1]
    field: overlapping_audiences.level_2
  - name: Category Level 3
    title: Category Level 3
    type: field_filter
    default_value: Digital Education Materials
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: [Category Level 1, Category Level 2]
    field: overlapping_audiences.level_3
  - name: Audience Name
    title: Audience Name
    type: field_filter
    default_value: IM - Digital Educational Resources
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
      options: []
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: [Category Level 1, Category Level 2, Category Level 3]
    field: overlapping_audiences.req_audience_name
