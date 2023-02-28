- dashboard: snapchat_insights_geo
  title: Snapchat Insights Geo
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: FPNxqxCdOCXNf24REZDcSG
  elements:
  - title: Metro
    name: Metro
    model: snapchat_insights
    explore: audience_insights_dimension_category_geo
    type: looker_grid
    fields: [audience_insights_dimension_category_geo.insight_name, audience_insights_dimension_category_geo.target_audience_percent,
      audience_insights_dimension_category_geo.reference_audience_percent, audience_insights_dimension_category_geo.target_index_to_reference]
    filters:
      audience_insights_dimension_category_geo.metro_id: "-NULL"
      geo_geos.country_code: us
    sorts: [audience_insights_dimension_category_geo.target_index_to_reference desc]
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
      audience_insights_dimension_category_geo.target_audience_percent:
        is_active: true
        palette:
          palette_id: 2abdc155-2b6d-8551-16e8-0c2e80545b7b
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#c1e8dd"
          - "#69bab6"
          - "#08807b"
      audience_insights_dimension_category_geo.reference_audience_percent:
        is_active: true
        palette:
          palette_id: f36bab3c-a3c6-c95f-ef13-317fbd24d7e3
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ccbec3"
          - "#6e686c"
          - "#0a0a0a"
      audience_insights_dimension_category_geo.target_index_to_reference:
        is_active: true
        palette:
          palette_id: a59ddbd7-ef90-ba6b-e74b-875aa2583755
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#fffbc6"
          - "#FFFC00"
          - "#ffce2b"
    series_value_format:
      audience_insights_dimension_category_geo.target_audience_percent:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
      audience_insights_dimension_category_geo.reference_audience_percent:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
      audience_insights_dimension_category_geo.target_index_to_reference:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
    hidden_pivots: {}
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
      Target Country Code: country.country_code
      Base Country Code: country.country_code
      Target Interest: interest_names.interest_name
      Target Age Group: geo_age_group.age_groups
      Target Gender: geo_demo.gender
    row: 0
    col: 12
    width: 12
    height: 12
  - title: Region
    name: Region
    model: snapchat_insights
    explore: audience_insights_dimension_category_geo
    type: looker_grid
    fields: [audience_insights_dimension_category_geo.insight_name, audience_insights_dimension_category_geo.target_audience_percent,
      audience_insights_dimension_category_geo.reference_audience_percent, audience_insights_dimension_category_geo.target_index_to_reference]
    filters:
      geo_geos.country_code: us
      audience_insights_dimension_category_geo.region_id: "-NULL"
    sorts: [audience_insights_dimension_category_geo.reference_audience_percent desc]
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
      audience_insights_dimension_category_geo.target_audience_percent:
        is_active: true
        palette:
          palette_id: 75e17903-62e1-2607-f76f-a7c05237718f
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffffff"
          - "#69bab6"
          - "#08807b"
      audience_insights_dimension_category_geo.reference_audience_percent:
        is_active: true
        palette:
          palette_id: 322efdf2-b191-7df3-ba8a-f872cc61658e
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#c6c4c7"
          - "#6e686c"
          - "#0a0a0a"
      audience_insights_dimension_category_geo.target_index_to_reference:
        is_active: true
        palette:
          palette_id: d7499185-b14c-7c82-c7ba-fd43403e1a6d
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#fffbc6"
          - "#FFFC00"
          - "#ffce2b"
    series_value_format:
      audience_insights_dimension_category_geo.target_audience_percent:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
      audience_insights_dimension_category_geo.reference_audience_percent:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
      audience_insights_dimension_category_geo.target_index_to_reference:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
    hidden_pivots: {}
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
      Target Country Code: country.country_code
      Base Country Code: country.country_code
      Target Interest: interest_names.interest_name
      Target Age Group: geo_age_group.age_groups
      Target Gender: geo_demo.gender
    row: 0
    col: 0
    width: 12
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
    explore: audience_insights_dimension_category_geo
    listens_to_filters: []
    field: country.country_code
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
    explore: audience_insights_dimension_category_geo
    listens_to_filters: [Base Country Code]
    field: geo_geos.country_code
  - name: Target Age Group
    title: Target Age Group
    type: field_filter
    default_value: 25-34
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: snapchat_insights
    explore: audience_insights_dimension_category_geo
    listens_to_filters: []
    field: geo_age_group.age_groups
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
    explore: audience_insights_dimension_category_geo
    listens_to_filters: []
    field: geo_demo.gender
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
    explore: audience_insights_dimension_category_geo
    listens_to_filters: []
    field: interest_names.interest_name
