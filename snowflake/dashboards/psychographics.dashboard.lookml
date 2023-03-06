- dashboard: psychographics
  title: PSYCHOGRAPHICS
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: FmuydvJPnOWSHXYiVrLbTI
  elements:
  - title: About Me
    name: About Me
    model: snowflake_insights_v1
    explore: snowflake_mrisimmons
    type: looker_grid
    fields: [snowflake_mrisimmons.psychographics_aboutme, snowflake_mrisimmons.question_level_3,
      snowflake_mrisimmons.target_percentage, snowflake_mrisimmons.index]
    filters:
      snowflake_mrisimmons.psychographics_aboutme: "-NULL"
      snowflake_mrisimmons.answer: ANY AGREE
    sorts: [snowflake_mrisimmons.psychographics_aboutme]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
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
      snowflake_mrisimmons.question_level_3: Statement
    series_column_widths:
      snowflake_mrisimmons.target_percentage: 180
      snowflake_mrisimmons.index: 180
      snowflake_mrisimmons.psychographics_aboutme: 250
    series_cell_visualizations:
      snowflake_mrisimmons.target_percentage:
        is_active: true
      snowflake_mrisimmons.index:
        is_active: true
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
      Audience Name: snowflake_mrisimmons.audience_name
      Index: snowflake_mrisimmons.index
      Target Percentage: snowflake_mrisimmons.target_percentage
      Client: snowflake_mrisimmons.client
      Agency: snowflake_mrisimmons.agency
    row: 0
    col: 0
    width: 24
    height: 11
  - title: Food & Health
    name: Food & Health
    model: snowflake_insights_v1
    explore: snowflake_mrisimmons
    type: looker_grid
    fields: [snowflake_mrisimmons.psychographics_foodandhealth, snowflake_mrisimmons.question_level_3,
      snowflake_mrisimmons.target_percentage, snowflake_mrisimmons.index]
    filters:
      snowflake_mrisimmons.answer: ANY AGREE
      snowflake_mrisimmons.psychographics_foodandhealth: "-NULL"
    sorts: [snowflake_mrisimmons.psychographics_foodandhealth]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
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
      snowflake_mrisimmons.question_level_3: Statement
    series_column_widths:
      snowflake_mrisimmons.psychographics_foodandhealth: 250
      snowflake_mrisimmons.target_percentage: 180
      snowflake_mrisimmons.index: 180
    series_cell_visualizations:
      snowflake_mrisimmons.target_percentage:
        is_active: true
      snowflake_mrisimmons.index:
        is_active: true
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
      Audience Name: snowflake_mrisimmons.audience_name
      Index: snowflake_mrisimmons.index
      Target Percentage: snowflake_mrisimmons.target_percentage
      Client: snowflake_mrisimmons.client
      Agency: snowflake_mrisimmons.agency
    row: 22
    col: 0
    width: 24
    height: 11
  - title: Shopping & Style
    name: Shopping & Style
    model: snowflake_insights_v1
    explore: snowflake_mrisimmons
    type: looker_grid
    fields: [snowflake_mrisimmons.psychographics_shoppingandstyle, snowflake_mrisimmons.question_level_3,
      snowflake_mrisimmons.target_percentage, snowflake_mrisimmons.index]
    filters:
      snowflake_mrisimmons.answer: ANY AGREE
      snowflake_mrisimmons.psychographics_shoppingandstyle: "-NULL"
    sorts: [snowflake_mrisimmons.psychographics_shoppingandstyle]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
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
      snowflake_mrisimmons.question_level_3: Statement
    series_column_widths:
      snowflake_mrisimmons.index: 180
      snowflake_mrisimmons.target_percentage: 180
      snowflake_mrisimmons.psychographics_shoppingandstyle: 250
    series_cell_visualizations:
      snowflake_mrisimmons.target_percentage:
        is_active: true
      snowflake_mrisimmons.index:
        is_active: true
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
      Audience Name: snowflake_mrisimmons.audience_name
      Index: snowflake_mrisimmons.index
      Target Percentage: snowflake_mrisimmons.target_percentage
      Client: snowflake_mrisimmons.client
      Agency: snowflake_mrisimmons.agency
    row: 11
    col: 0
    width: 24
    height: 11
  - title: Travel & Money
    name: Travel & Money
    model: snowflake_insights_v1
    explore: snowflake_mrisimmons
    type: looker_grid
    fields: [snowflake_mrisimmons.psychographics_travelandmoney, snowflake_mrisimmons.question_level_3,
      snowflake_mrisimmons.target_percentage, snowflake_mrisimmons.index]
    filters:
      snowflake_mrisimmons.answer: ANY AGREE
      snowflake_mrisimmons.psychographics_travelandmoney: "-NULL"
    sorts: [snowflake_mrisimmons.psychographics_travelandmoney]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
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
      snowflake_mrisimmons.question_level_3: Statement
    series_column_widths:
      snowflake_mrisimmons.index: 180
      snowflake_mrisimmons.target_percentage: 180
      snowflake_mrisimmons.psychographics_travelandmoney: 250
    series_cell_visualizations:
      snowflake_mrisimmons.target_percentage:
        is_active: true
      snowflake_mrisimmons.index:
        is_active: true
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
      Audience Name: snowflake_mrisimmons.audience_name
      Index: snowflake_mrisimmons.index
      Target Percentage: snowflake_mrisimmons.target_percentage
      Client: snowflake_mrisimmons.client
      Agency: snowflake_mrisimmons.agency
    row: 33
    col: 0
    width: 24
    height: 12
  filters:
  - name: Agency
    title: Agency
    type: field_filter
    default_value: INI
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: snowflake_insights_v1
    explore: snowflake_mrisimmons
    listens_to_filters: []
    field: snowflake_mrisimmons.agency
  - name: Client
    title: Client
    type: field_filter
    default_value: JBL
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: snowflake_insights_v1
    explore: snowflake_mrisimmons
    listens_to_filters: [Agency]
    field: snowflake_mrisimmons.client
  - name: Audience Name
    title: Audience Name
    type: field_filter
    default_value: Brand.Competitors
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: snowflake_insights_v1
    explore: snowflake_mrisimmons
    listens_to_filters: [Agency, Client]
    field: snowflake_mrisimmons.audience_name
  - name: Target Percentage
    title: Target Percentage
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: snowflake_insights_v1
    explore: snowflake_mrisimmons
    listens_to_filters: []
    field: snowflake_mrisimmons.target_percentage
  - name: Index
    title: Index
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: snowflake_insights_v1
    explore: snowflake_mrisimmons
    listens_to_filters: []
    field: snowflake_mrisimmons.index
