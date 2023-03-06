- dashboard: snapchat_interest_insights
  title: Snapchat Interest Insights
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 3P0mdALn4WKsW8KgRiaNDb
  elements:
  - title: Interest Insights
    name: Interest Insights
    model: snapchat_insights
    explore: audience_insights_dimension_category_interest
    type: looker_grid
    fields: [audience_insights_dimension_category_interest.insight_name, audience_insights_dimension_category_interest.target_audience_percent,
      audience_insights_dimension_category_interest.reference_audience_percent, audience_insights_dimension_category_interest.target_index_to_reference]
    filters:
      audience_insights_dimension_category_interest.insight_id: "%SLC%"
    sorts: [audience_insights_dimension_category_interest.target_index_to_reference
        desc]
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
    series_cell_visualizations:
      audience_insights_dimension_category_interest.target_audience_percent:
        is_active: true
        palette:
          palette_id: ad5a98dc-7842-2429-2dd9-f9f1d6bfa306
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffffff"
          - "#e670dd"
          - "#ff22a7"
      audience_insights_dimension_category_interest.target_index_to_reference:
        is_active: true
        palette:
          palette_id: 393f64e9-868e-8b5a-0b4a-9569a8a0c84a
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#fffbc6"
          - "#FFFC00"
          - "#ffce2b"
      audience_insights_dimension_category_interest.reference_audience_percent:
        is_active: true
        palette:
          palette_id: 203bf7c1-5b8a-c52f-0792-80f8577b6216
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#bdb1b1"
          - "#6e686c"
          - "#000000"
    series_value_format:
      audience_insights_dimension_category_interest.target_audience_percent:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
      audience_insights_dimension_category_interest.reference_audience_percent:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
      audience_insights_dimension_category_interest.target_index_to_reference:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    listen:
      Base Country Code: interest_country.country_code
      Target Country Code: interest_geos.target_country_code
      Target Age Groups: interest_age_group.age_groups
      Target Gender: interest_demo.gender
      Target Interest: interest_names.interest_name
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: Base Country Code
    title: Base Country Code
    type: field_filter
    default_value: us
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: snapchat_insights
    explore: audience_insights_dimension_category_interest
    listens_to_filters: []
    field: interest_country.country_code
  - name: Target Country Code
    title: Target Country Code
    type: field_filter
    default_value: us
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: snapchat_insights
    explore: audience_insights_dimension_category_interest
    listens_to_filters: [Base Country Code]
    field: interest_geos.target_country_code
  - name: Target Gender
    title: Target Gender
    type: field_filter
    default_value: MALE
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: snapchat_insights
    explore: audience_insights_dimension_category_interest
    listens_to_filters: []
    field: interest_demo.gender
  - name: Target Age Groups
    title: Target Age Groups
    type: field_filter
    default_value: 21-24
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: snapchat_insights
    explore: audience_insights_dimension_category_interest
    listens_to_filters: []
    field: interest_age_group.age_groups
  - name: Target Interest
    title: Target Interest
    type: field_filter
    default_value: Adventure Seekers
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: snapchat_insights
    explore: audience_insights_dimension_category_interest
    listens_to_filters: []
    field: interest_names.interest_name
