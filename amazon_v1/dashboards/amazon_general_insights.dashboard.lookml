- dashboard: amazon
  title: Amazon
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Yb9KN28QQGSbWolUm7dyaw
  elements:
  - title: Amazon_v1
    name: Amazon_v1
    model: amazon_v1
    explore: overlapping_audiences
    type: looker_grid
    fields: [overlapping_audiences.name, overlapping_audiences.category, overlapping_audiences.average_bound,
      overlapping_audiences.affinity_total, overlapping_audiences.lowerbound, overlapping_audiences.upperbound]
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
      Audience: overlapping_audiences.req_name
      Segment Size: overlapping_audiences.average_bound
      Overlap Index: overlapping_audiences.affinity_total
      Segment Category: overlapping_audiences.req_category
    row: 14
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
      Audience: overlapping_audiences.req_name
      Segment Size: overlapping_audiences.average_bound
      Overlap Index: overlapping_audiences.affinity_total
      Segment Category: overlapping_audiences.req_category
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
      Audience: overlapping_audiences.req_name
      Segment Size: overlapping_audiences.average_bound
      Overlap Index: overlapping_audiences.affinity_total
      Segment Category: overlapping_audiences.req_category
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
      Audience: overlapping_audiences.req_name
      Segment Size: overlapping_audiences.average_bound
      Overlap Index: overlapping_audiences.affinity_total
      Segment Category: overlapping_audiences.req_category
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
    hidden_fields: [overlapping_audiences.lowerbound, overlapping_audiences.upperbound,
      overlapping_audiences.category]
    series_types: {}
    defaults_version: 1
    listen:
      Audience: overlapping_audiences.req_name
      Segment Size: overlapping_audiences.average_bound
      Overlap Index: overlapping_audiences.affinity_total
      Segment Category: overlapping_audiences.req_category
    row: 2
    col: 12
    width: 12
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 9
    width: 6
    height: 2
  - title: Untitled
    name: Untitled
    model: agency
    explore: agency
    type: single_value
    fields: [agency.logo]
    filters:
      agency.name: "{{ _user_attributes['agency'] }}"
    sorts: [agency.logo]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 0
    col: 21
    width: 3
    height: 2
  filters:
  - name: Segment Category
    title: Segment Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: []
    field: overlapping_audiences.req_category
  - name: Audience
    title: Audience
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: true
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: [Segment Category]
    field: overlapping_audiences.req_name
  - name: Segment Size
    title: Segment Size
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
    field: overlapping_audiences.average_bound
  - name: Overlap Index
    title: Overlap Index
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
    field: overlapping_audiences.affinity_total
