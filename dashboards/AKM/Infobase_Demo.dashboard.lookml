- dashboard: infobase_demo
  title: Infobase Demo
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: xfrhw8kjxDQcWygh6m9j5Z
  elements:
  - title: Infobase Demo
    name: Infobase Demo
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: single_value
    fields: [snowflake_infobase.audience_size]
    sorts: [snowflake_infobase.audience_size]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1c89a3"
    single_value_title: Audience Size
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
    listen:
      Audience Name: snowflake_infobase.audience_name
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
      Agency: snowflake_infobase.agency
    row: 0
    col: 0
    width: 9
    height: 2
  - title: Age
    name: Age
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_bar
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.age]
    filters:
      snowflake_infobase.demo_age: "-NULL"
    sorts: [snowflake_infobase.age]
    limit: 500
    column_limit: 50
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
    color_application: undefined
    series_types: {}
    series_colors:
      snowflake_infobase.index: "#5ec7eb"
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    series_labels:
      snowflake_infobase.target_percentage: Audience
      snowflake_infobase.genpop_percentage: Base
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map: usa
    map_projection: ''
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: false
    down_color: false
    total_color: false
    listen:
      Audience Name: snowflake_infobase.audience_name
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
      Agency: snowflake_infobase.agency
    row: 12
    col: 12
    width: 12
    height: 5
  - title: Ethnicity
    name: Ethnicity
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.ethnicity]
    filters:
      snowflake_infobase.demo_ethnicity: "-NULL"
    sorts: [snowflake_infobase.genpop_percentage desc 0]
    limit: 500
    column_limit: 50
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    font_size: 9
    hide_legend: false
    color_application: undefined
    series_colors:
      snowflake_infobase.genpop_percentage: "#1c89a3"
      snowflake_infobase.target_percentage: "#ffae00"
    series_labels:
      snowflake_infobase.target_percentage: Audience
      snowflake_infobase.genpop_percentage: Base
    series_types: {}
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: false
    down_color: false
    total_color: false
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen:
      Audience Name: snowflake_infobase.audience_name
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
      Agency: snowflake_infobase.agency
    row: 17
    col: 11
    width: 13
    height: 6
  - title: Gender - Audience
    name: Gender - Audience
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_pie
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.gender]
    filters:
      snowflake_infobase.demo_gender: "-NULL"
      snowflake_infobase.target_percentage: ''
    sorts: [snowflake_infobase.target_percentage desc 0]
    limit: 500
    value_labels: labels
    label_type: labPer
    start_angle: 30
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
      MALE: "#EA4335"
      FEMALE: "#F9AB00"
    series_labels:
      snowflake_infobase.target_percentage: Audience
      snowflake_infobase.genpop_percentage: Base
    show_value_labels: true
    font_size: 13
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
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Audience Name: snowflake_infobase.audience_name
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
      Agency: snowflake_infobase.agency
    row: 12
    col: 0
    width: 6
    height: 5
  - title: Home Ownership
    name: Home Ownership
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_bar
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.home_ownership]
    filters:
      snowflake_infobase.home_ownership: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    font_size: '12'
    series_types: {}
    series_colors:
      snowflake_infobase.genpop_percentage: "#1c89a3"
      snowflake_infobase.target_percentage: "#ffae00"
    series_labels:
      snowflake_infobase.target_percentage: Audience
      snowflake_infobase.genpop_percentage: Base
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    hidden_points_if_no: []
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: false
    down_color: false
    total_color: false
    listen:
      Audience Name: snowflake_infobase.audience_name
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
      Agency: snowflake_infobase.agency
    row: 27
    col: 0
    width: 11
    height: 6
  - title: Preferred Language
    name: Preferred Language
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.prefer_language]
    filters:
      snowflake_infobase.prefer_language: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    font_size: '10'
    series_types: {}
    series_colors:
      snowflake_infobase.genpop_percentage: "#1c89a3"
      snowflake_infobase.target_percentage: "#ffae00"
    series_labels:
      snowflake_infobase.target_percentage: Audience
      snowflake_infobase.genpop_percentage: Base
    show_dropoff: false
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
      Agency: snowflake_infobase.agency
    row: 17
    col: 0
    width: 11
    height: 6
  - title: Household Size
    name: Household Size
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.household_size]
    filters:
      snowflake_infobase.household_size: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
    limit: 500
    column_limit: 50
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors:
      snowflake_infobase.genpop_percentage: "#1c89a3"
      snowflake_infobase.target_percentage: "#ffae00"
    series_labels:
      snowflake_infobase.target_percentage: Audience
      snowflake_infobase.genpop_percentage: Base
    defaults_version: 1
    series_types: {}
    listen:
      Audience Name: snowflake_infobase.audience_name
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
      Agency: snowflake_infobase.agency
    row: 27
    col: 11
    width: 13
    height: 6
  - title: Marital Status - Audience
    name: Marital Status - Audience
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_pie
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.marital_status]
    filters:
      snowflake_infobase.marital_status: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
    limit: 500
    column_limit: 50
    value_labels: labels
    label_type: labPer
    start_angle: 30
    series_colors:
      snowflake_infobase.genpop_percentage: "#1c89a3"
      snowflake_infobase.target_percentage: "#ffae00"
      MARRIED: "#EA4335"
      SINGLE: "#F9AB00"
    series_labels:
      snowflake_infobase.target_percentage: Audience
      snowflake_infobase.genpop_percentage: Base
    show_value_labels: true
    font_size: 12
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
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
      Agency: snowflake_infobase.agency
    row: 23
    col: 0
    width: 6
    height: 4
  - title: Income
    name: Income
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.income]
    filters:
      snowflake_infobase.income: "-NULL"
    sorts: [snowflake_infobase.income]
    limit: 500
    column_limit: 50
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors:
      snowflake_infobase.genpop_percentage: "#1c89a3"
      snowflake_infobase.target_percentage: "#ffae00"
    series_labels:
      snowflake_infobase.target_percentage: Audience
      snowflake_infobase.genpop_percentage: Base
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
      Agency: snowflake_infobase.agency
    row: 33
    col: 11
    width: 13
    height: 7
  - title: Presence of Children - Base
    name: Presence of Children - Base
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_pie
    fields: [snowflake_infobase.genpop_percentage, snowflake_infobase.presence_of_children]
    filters:
      snowflake_infobase.presence_of_children: "-NULL"
    sorts: [snowflake_infobase.genpop_percentage desc]
    limit: 500
    column_limit: 50
    value_labels: labels
    label_type: labPer
    series_colors:
      snowflake_infobase.genpop_percentage: "#1c89a3"
      snowflake_infobase.target_percentage: "#ffae00"
    series_labels:
      snowflake_infobase.target_percentage: Audience
      snowflake_infobase.genpop_percentage: Base
    show_value_labels: true
    font_size: 12
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
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
      Agency: snowflake_infobase.agency
    row: 23
    col: 18
    width: 6
    height: 4
  - title: Occupation
    name: Occupation
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.occupation]
    filters:
      snowflake_infobase.occupation: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
    limit: 500
    column_limit: 50
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors:
      snowflake_infobase.genpop_percentage: "#1c89a3"
      snowflake_infobase.target_percentage: "#ffae00"
    series_labels:
      snowflake_infobase.target_percentage: Audience
      snowflake_infobase.genpop_percentage: Base
    x_axis_label_rotation: 300
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
      Agency: snowflake_infobase.agency
    row: 33
    col: 0
    width: 11
    height: 7
  - title: Gender - Base
    name: Gender - Base
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_pie
    fields: [snowflake_infobase.gender, snowflake_infobase.genpop_percentage]
    filters:
      snowflake_infobase.demo_gender: "-NULL"
      snowflake_infobase.genpop_percentage: ''
    sorts: [snowflake_infobase.gender]
    limit: 500
    value_labels: labels
    label_type: labPer
    start_angle: 200
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: true
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
      FEMALE: "#1A73E8"
      MALE: "#12B5CB"
    series_labels:
      snowflake_infobase.target_percentage: Audience
      snowflake_infobase.genpop_percentage: Base
    show_value_labels: true
    font_size: 13
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
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Audience Name: snowflake_infobase.audience_name
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
      Agency: snowflake_infobase.agency
    row: 12
    col: 6
    width: 6
    height: 5
  - title: Marital Status - Base
    name: Marital Status - Base
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_pie
    fields: [snowflake_infobase.genpop_percentage, snowflake_infobase.marital_status]
    filters:
      snowflake_infobase.marital_status: "-NULL"
    sorts: [snowflake_infobase.genpop_percentage desc]
    limit: 500
    column_limit: 50
    value_labels: labels
    label_type: labPer
    start_angle: 30
    series_colors:
      snowflake_infobase.genpop_percentage: "#1c89a3"
      snowflake_infobase.target_percentage: "#ffae00"
    series_labels:
      snowflake_infobase.target_percentage: Audience
      snowflake_infobase.genpop_percentage: Base
    show_value_labels: true
    font_size: 12
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
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
      Agency: snowflake_infobase.agency
    row: 23
    col: 6
    width: 6
    height: 4
  - title: Presence of Children - Audience
    name: Presence of Children - Audience
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_pie
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.presence_of_children]
    filters:
      snowflake_infobase.presence_of_children: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
    limit: 500
    column_limit: 50
    value_labels: labels
    label_type: labPer
    series_colors:
      snowflake_infobase.genpop_percentage: "#1c89a3"
      snowflake_infobase.target_percentage: "#ffae00"
      'No': "#EA4335"
      'Yes': "#F9AB00"
    series_labels:
      snowflake_infobase.target_percentage: Audience
      snowflake_infobase.genpop_percentage: Base
    show_value_labels: true
    font_size: 12
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
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
      Agency: snowflake_infobase.agency
    row: 23
    col: 12
    width: 6
    height: 4
  - title: Infobase Full List of Audiences
    name: Infobase Full List of Audiences
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_grid
    fields: [snowflake_infobase.category, snowflake_infobase.statement, snowflake_infobase.target_percentage,
      snowflake_infobase.index]
    filters:
      snowflake_infobase.target_percentage: ''
      snowflake_infobase.index: ''
    sorts: [snowflake_infobase.statement]
    limit: 500
    column_limit: 50
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
    series_column_widths:
      snowflake_infobase.category: 110
      snowflake_infobase.statement: 350
    series_cell_visualizations:
      snowflake_infobase.target_percentage:
        is_active: true
        value_display: true
      snowflake_infobase.index:
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
      Audience Name: snowflake_infobase.audience_name
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
      Category: snowflake_infobase.category
      Agency: snowflake_infobase.agency
    row: 2
    col: 0
    width: 24
    height: 10
  - title: Untitled
    name: Untitled
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: single_value
    fields: [snowflake_infobase.link_info]
    sorts: [snowflake_infobase.link_info]
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
    listen:
      Audience Name: snowflake_infobase.audience_name
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
      Category: snowflake_infobase.category
      Agency: snowflake_infobase.agency
    row: 0
    col: 9
    width: 15
    height: 1
  filters:
  - name: Agency
    title: Agency
    type: field_filter
    default_value: UM
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: snowflake_insights_v1
    explore: snowflake_infobase
    listens_to_filters: []
    field: snowflake_infobase.agency
  - name: Client
    title: Client
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: snowflake_insights_v1
    explore: snowflake_infobase
    listens_to_filters: [Agency]
    field: snowflake_infobase.client
  - name: Audience Name
    title: Audience Name
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: snowflake_insights_v1
    explore: snowflake_infobase
    listens_to_filters: [Client, Agency]
    field: snowflake_infobase.audience_name
  - name: Date Created
    title: Date Created
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: snowflake_insights_v1
    explore: snowflake_infobase
    listens_to_filters: [Client, Audience Name]
    field: snowflake_infobase.created
  - name: Infobase Version
    title: Infobase Version
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: snowflake_insights_v1
    explore: snowflake_infobase
    listens_to_filters: [Client, Audience Name]
    field: snowflake_infobase.infobase_version
  - name: Category
    title: Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: snowflake_insights_v1
    explore: snowflake_infobase
    listens_to_filters: []
    field: snowflake_infobase.category
