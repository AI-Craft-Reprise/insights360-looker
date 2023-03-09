- dashboard: amazon_all_ranked_segments
  title: Amazon All Ranked Segments
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  filters_location_top: false
  preferred_slug: ppbAPuyFk1nzRIMUDwfEaJ
  elements:
  - title: All Ranked Segments
    name: All Ranked Segments
    model: amazon_v1
    explore: overlapping_audiences
    type: looker_grid
    fields: [overlapping_audiences.category, audiences.audience_category_level_2,
      audiences.audience_category_level_3, audiences.audience_category_level_4, audiences.audience_category_level_5,
      overlapping_audiences.lowerbound, overlapping_audiences.upperbound, overlapping_audiences.name,
      overlapping_audiences.average_bound, overlapping_audiences.affinity_total]
    filters:
      overlapping_audiences.name: ''
      overlapping_audiences.category: ''
    sorts: [overlapping_audiences.affinity_total desc]
    limit: 500
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
      overlapping_audiences.category: Segment Category
      overlapping_audiences.average_bound: Average Daily Reach
      overlapping_audiences.affinity_total: Overlap Index
    series_cell_visualizations:
      overlapping_audiences.average_bound:
        is_active: false
      overlapping_audiences.affinity_total:
        is_active: true
        palette:
          palette_id: d84a33a1-c3bd-fd37-4cc1-7caef5bd8cf5
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
    hidden_fields: [overlapping_audiences.lowerbound, overlapping_audiences.upperbound]
    series_types: {}
    defaults_version: 1
    title_hidden: true
    listen:
      Overlap Index: overlapping_audiences.affinity_total
      Segment Size: overlapping_audiences.average_bound
      Requested Audience Category: overlapping_audiences.req_audience_category
      Requested Audience Name: overlapping_audiences.requested_audience_name
      Overlap Audience Category Level 2: audiences.audience_category_level_2
      Filter Category Level 2: overlapping_audiences.requested_audience_category_level_2
      Filter Category Level 3: overlapping_audiences.requested_audience_category_level_3
      Filter Category Level 4: overlapping_audiences.requested_audience_category_level_4
      Filter Category Level 5: overlapping_audiences.requested_audience_category_level_5
      Filter Category Level 6: overlapping_audiences.requested_audience_category_level_6
      Filter Category Level 7: overlapping_audiences.requested_audience_category_level_7
      Filter Category Level 8: overlapping_audiences.requested_audience_category_level_8
    row: 3
    col: 0
    width: 24
    height: 12
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 15
    col: 3
    width: 21
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<img src=\"http://logo-logos.com/2016/12/Amazon_logo.png\" width=\"\
      200\" height=\"70\"/>\n\n"
    row: 0
    col: 18
    width: 6
    height: 3
  - type: button
    name: button_604
    rich_content_json: '{"text":"All Ranked Segments","description":"","newTab":true,"alignment":"center","size":"large","style":"OUTLINED","color":"#E8710A"}'
    row: 0
    col: 9
    width: 8
    height: 2
  filters:
  - name: Requested Audience Category
    title: Requested Audience Category
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
  - name: Filter Category Level 2
    title: Filter Category Level 2
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: [Requested Audience Category]
    field: overlapping_audiences.requested_audience_category_level_2
  - name: Filter Category Level 3
    title: Filter Category Level 3
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: [Requested Audience Category, Filter Category Level 2]
    field: overlapping_audiences.requested_audience_category_level_3
  - name: Filter Category Level 4
    title: Filter Category Level 4
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: [Requested Audience Category, Filter Category Level 2, Filter
        Category Level 3]
    field: overlapping_audiences.requested_audience_category_level_4
  - name: Filter Category Level 5
    title: Filter Category Level 5
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: [Requested Audience Category, Filter Category Level 2, Filter
        Category Level 3, Filter Category Level 4]
    field: overlapping_audiences.requested_audience_category_level_5
  - name: Filter Category Level 6
    title: Filter Category Level 6
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: [Requested Audience Category, Filter Category Level 2, Filter
        Category Level 3, Filter Category Level 5, Filter Category Level 4]
    field: overlapping_audiences.requested_audience_category_level_6
  - name: Filter Category Level 7
    title: Filter Category Level 7
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: [Requested Audience Category, Filter Category Level 2, Filter
        Category Level 3, Filter Category Level 5, Filter Category Level 6, Filter
        Category Level 4]
    field: overlapping_audiences.requested_audience_category_level_7
  - name: Filter Category Level 8
    title: Filter Category Level 8
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: [Requested Audience Category, Filter Category Level 2, Filter
        Category Level 3, Filter Category Level 5, Filter Category Level 6, Filter
        Category Level 4, Filter Category Level 7]
    field: overlapping_audiences.requested_audience_category_level_8
  - name: Requested Audience Name
    title: Requested Audience Name
    type: field_filter
    default_value: "^ Cell Phones"
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: [Requested Audience Category, Filter Category Level 2, Filter
        Category Level 3, Filter Category Level 5, Filter Category Level 6, Filter
        Category Level 4, Filter Category Level 7, Filter Category Level 8]
    field: overlapping_audiences.requested_audience_name
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
  - name: Segment Size
    title: Segment Size
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options:
      - '1'
      - '2'
      - '3'
    model: amazon_v1
    explore: overlapping_audiences
    listens_to_filters: []
    field: overlapping_audiences.average_bound
  - name: Overlap Audience Category Level 2
    title: Overlap Audience Category Level 2
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
    field: audiences.audience_category_level_2
