- dashboard: demographics
  title: Demographics
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: d0ueaW8REteHAYaPnNs8Mu
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
    custom_color: "#ba077b"
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
    row: 0
    col: 15
    width: 3
    height: 3
  - title: Age
    name: Age
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_bar
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.age, snowflake_infobase.index]
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
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        reverse: false
    y_axes: [{label: !!null '', orientation: top, series: [{axisId: snowflake_infobase.target_percentage,
            id: snowflake_infobase.target_percentage, name: Percentage}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: bottom, series: [{axisId: snowflake_infobase.index,
            id: snowflake_infobase.index, name: Index}], showLabels: true, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    hide_legend: true
    series_types:
      snowflake_infobase.index: line
    series_colors: {}
    series_labels:
      snowflake_infobase.target_percentage: Percentage
      snowflake_infobase.genpop_percentage: Base
    reference_lines: []
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
    row: 3
    col: 11
    width: 13
    height: 6
  - title: Gender
    name: Gender
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.gender, snowflake_infobase.index]
    filters:
      snowflake_infobase.demo_gender: "-NULL"
      snowflake_infobase.target_percentage: ''
    sorts: [snowflake_infobase.gender desc]
    limit: 500
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
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: snowflake_infobase.target_percentage,
            id: snowflake_infobase.target_percentage, name: Percentage}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: snowflake_infobase.index,
            id: snowflake_infobase.index, name: Index}], showLabels: true, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    hide_legend: true
    font_size: '13'
    series_types:
      snowflake_infobase.index: line
    series_colors: {}
    series_labels:
      snowflake_infobase.target_percentage: Percentage
      snowflake_infobase.genpop_percentage: Base
      FEMALE - snowflake_infobase.target_percentage: female
      MALE - snowflake_infobase.target_percentage: male
    value_labels: labels
    label_type: labPer
    start_angle: 30
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
    row: 3
    col: 6
    width: 5
    height: 6
  - title: Home Ownership
    name: Home Ownership
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.home_ownership,
      snowflake_infobase.index]
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: snowflake_infobase.target_percentage,
            id: snowflake_infobase.target_percentage, name: Percentage}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: snowflake_infobase.index,
            id: snowflake_infobase.index, name: Index}], showLabels: true, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    hide_legend: true
    font_size: '12'
    series_types:
      snowflake_infobase.index: line
    series_colors: {}
    series_labels:
      snowflake_infobase.target_percentage: Percentage
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
    row: 20
    col: 18
    width: 6
    height: 6
  - title: Household Size
    name: Household Size
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_donut_multiples
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.household_size]
    pivots: [snowflake_infobase.household_size]
    filters:
      snowflake_infobase.household_size: "-NULL,-6,-7,-8,-9"
    sorts: [snowflake_infobase.target_percentage desc 0, snowflake_infobase.household_size]
    limit: 500
    column_limit: 50
    show_value_labels: true
    font_size: 12
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    series_colors:
      snowflake_infobase.genpop_percentage: "#1c89a3"
      snowflake_infobase.target_percentage: "#ffae00"
    series_labels:
      snowflake_infobase.target_percentage: Audience
      snowflake_infobase.genpop_percentage: Base
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
    value_labels: legend
    label_type: labPer
    listen:
      Audience Name: snowflake_infobase.audience_name
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 20
    col: 0
    width: 7
    height: 6
  - title: Marital Status
    name: Marital Status
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.marital_status,
      snowflake_infobase.index]
    filters:
      snowflake_infobase.marital_status: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc, snowflake_infobase.marital_status]
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: snowflake_infobase.target_percentage,
            id: snowflake_infobase.target_percentage, name: Percentage}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: snowflake_infobase.index,
            id: snowflake_infobase.index, name: Index}], showLabels: true, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    hide_legend: true
    font_size: '12'
    series_types:
      snowflake_infobase.index: line
    series_colors: {}
    series_labels:
      snowflake_infobase.target_percentage: Percentage
      snowflake_infobase.genpop_percentage: Base
      MARRIED - snowflake_infobase.target_percentage: married
      SINGLE - snowflake_infobase.target_percentage: single
    value_labels: labels
    label_type: labPer
    start_angle: 30
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 3
    col: 0
    width: 6
    height: 6
  - title: Income
    name: Income
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.income, snowflake_infobase.index]
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: snowflake_infobase.target_percentage,
            id: snowflake_infobase.target_percentage, name: Percentage}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: snowflake_infobase.index,
            id: snowflake_infobase.index, name: Index}], showLabels: true, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    hide_legend: true
    series_types:
      snowflake_infobase.index: line
    series_colors: {}
    series_labels:
      snowflake_infobase.target_percentage: Percentage
      snowflake_infobase.genpop_percentage: Base
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 26
    col: 0
    width: 11
    height: 11
  - title: Occupation
    name: Occupation
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_bar
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.occupation,
      snowflake_infobase.index]
    filters:
      snowflake_infobase.occupation: "-NULL"
    sorts: [snowflake_infobase.occupation desc]
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    y_axes: [{label: !!null '', orientation: top, series: [{axisId: snowflake_infobase.target_percentage,
            id: snowflake_infobase.target_percentage, name: Percentage}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: '', orientation: bottom, series: [{axisId: snowflake_infobase.index,
            id: snowflake_infobase.index, name: Index}], showLabels: true, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    hide_legend: true
    series_types:
      snowflake_infobase.index: line
    series_colors: {}
    series_labels:
      snowflake_infobase.target_percentage: Percentage
      snowflake_infobase.genpop_percentage: Base
    x_axis_label_rotation: 300
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 26
    col: 11
    width: 13
    height: 11
  - title: Presence of Children
    name: Presence of Children
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.presence_of_children,
      snowflake_infobase.index]
    filters:
      snowflake_infobase.presence_of_children: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc, snowflake_infobase.presence_of_children]
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: snowflake_infobase.target_percentage,
            id: snowflake_infobase.target_percentage, name: Percentage}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: snowflake_infobase.index,
            id: snowflake_infobase.index, name: Index}], showLabels: true, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    hide_legend: true
    font_size: '11'
    series_types:
      snowflake_infobase.index: line
    series_colors: {}
    series_labels:
      snowflake_infobase.target_percentage: Percentage
      snowflake_infobase.genpop_percentage: Base
      No - snowflake_infobase.target_percentage: no children
      Yes - snowflake_infobase.target_percentage: children
    value_labels: labels
    label_type: labPer
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 20
    col: 13
    width: 5
    height: 6
  - title: Ethnicity
    name: Ethnicity
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_donut_multiples
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.ethnicity]
    pivots: [snowflake_infobase.ethnicity]
    filters:
      snowflake_infobase.ethnicity: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc 0, snowflake_infobase.ethnicity]
    limit: 500
    show_value_labels: true
    font_size: 13
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        reverse: false
    series_colors: {}
    series_labels:
      snowflake_infobase.target_percentage: Audience
      snowflake_infobase.genpop_percentage: Base
      FEMALE - snowflake_infobase.target_percentage: female
      MALE - snowflake_infobase.target_percentage: male
      AFRICAN AMERICAN - snowflake_infobase.target_percentage: african american
      ASIAN - snowflake_infobase.target_percentage: asian
      HISPANIC - snowflake_infobase.target_percentage: hispanic
      WHITE - snowflake_infobase.target_percentage: white
    value_labels: labels
    label_type: labPer
    start_angle: 30
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
    row: 9
    col: 11
    width: 7
    height: 6
  - title: Ethnicity (Copy)
    name: Ethnicity (Copy)
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_bar
    fields: [snowflake_infobase.ethnicity, snowflake_infobase.index]
    filters:
      snowflake_infobase.ethnicity: "-NULL"
    sorts: [snowflake_infobase.ethnicity]
    limit: 500
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: snowflake_infobase.index,
            id: snowflake_infobase.index, name: Index}], showLabels: true, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    font_size: '13'
    series_types: {}
    series_colors:
      snowflake_infobase.index: "#80868B"
    series_labels:
      snowflake_infobase.target_percentage: Audience
      snowflake_infobase.genpop_percentage: Base
      FEMALE - snowflake_infobase.target_percentage: female
      MALE - snowflake_infobase.target_percentage: male
      AFRICAN AMERICAN - snowflake_infobase.target_percentage: african american
      ASIAN - snowflake_infobase.target_percentage: asian
      HISPANIC - snowflake_infobase.target_percentage: hispanic
      WHITE - snowflake_infobase.target_percentage: white
    value_labels: labels
    label_type: labPer
    start_angle: 30
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
    title_hidden: true
    listen:
      Audience Name: snowflake_infobase.audience_name
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 15
    col: 11
    width: 7
    height: 5
  - title: Ethnicity (Copy 2)
    name: Ethnicity (Copy 2)
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_bar
    fields: [snowflake_infobase.index, snowflake_infobase.prefer_language]
    filters:
      snowflake_infobase.prefer_language: "-NULL"
    limit: 500
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: bottom, series: [{axisId: snowflake_infobase.index,
            id: snowflake_infobase.index, name: Index}], showLabels: true, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    font_size: '13'
    series_types: {}
    series_colors:
      snowflake_infobase.index: "#80868B"
    series_labels:
      snowflake_infobase.target_percentage: Audience
      snowflake_infobase.genpop_percentage: Base
      FEMALE - snowflake_infobase.target_percentage: female
      MALE - snowflake_infobase.target_percentage: male
      AFRICAN AMERICAN - snowflake_infobase.target_percentage: african american
      ASIAN - snowflake_infobase.target_percentage: asian
      HISPANIC - snowflake_infobase.target_percentage: hispanic
      WHITE - snowflake_infobase.target_percentage: white
    value_labels: labels
    label_type: labPer
    start_angle: 30
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
    title_hidden: true
    listen:
      Audience Name: snowflake_infobase.audience_name
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 15
    col: 18
    width: 6
    height: 5
  - title: Household Size (Copy)
    name: Household Size (Copy)
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_bar
    fields: [snowflake_infobase.household_size, snowflake_infobase.index]
    filters:
      snowflake_infobase.household_size: "-NULL,-6,-7,-8,-9"
    sorts: [snowflake_infobase.household_size]
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: snowflake_infobase.index,
            id: snowflake_infobase.index, name: Index}], showLabels: true, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    hide_legend: true
    font_size: '12'
    series_types: {}
    series_colors:
      snowflake_infobase.genpop_percentage: "#1c89a3"
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.index: "#80868B"
    series_labels:
      snowflake_infobase.target_percentage: Audience
      snowflake_infobase.genpop_percentage: Base
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    title_hidden: true
    listen:
      Audience Name: snowflake_infobase.audience_name
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 20
    col: 7
    width: 6
    height: 6
  - title: Infobase Demo (Copy 3)
    name: Infobase Demo (Copy 3)
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: single_value
    fields: [snowflake_infobase.audience_name]
    filters: {}
    sorts: [snowflake_infobase.audience_name]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#ba077b"
    single_value_title: Audience Name
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    row: 0
    col: 0
    width: 7
    height: 3
  - title: Geographies
    name: Geographies
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_grid
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.geo, snowflake_infobase.index]
    filters:
      snowflake_infobase.category: GEO,geo
      snowflake_infobase.geo: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        reverse: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      snowflake_infobase.target_percentage: Audience
      snowflake_infobase.genpop_percentage: Base
      FEMALE - snowflake_infobase.target_percentage: female
      MALE - snowflake_infobase.target_percentage: male
      AFRICAN AMERICAN - snowflake_infobase.target_percentage: african american
      ASIAN - snowflake_infobase.target_percentage: asian
      HISPANIC - snowflake_infobase.target_percentage: hispanic
      WHITE - snowflake_infobase.target_percentage: white
    series_cell_visualizations:
      snowflake_infobase.target_percentage:
        is_active: true
    show_value_labels: true
    font_size: 13
    series_colors: {}
    value_labels: labels
    label_type: labPer
    start_angle: 30
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
    row: 9
    col: 0
    width: 11
    height: 11
  - title: Preferred Language
    name: Preferred Language
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_donut_multiples
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.prefer_language]
    pivots: [snowflake_infobase.prefer_language]
    filters:
      snowflake_infobase.prefer_language: "-NULL"
      snowflake_infobase.agency: ''
    sorts: [snowflake_infobase.target_percentage desc 0, snowflake_infobase.prefer_language]
    limit: 500
    column_limit: 50
    show_value_labels: true
    font_size: 10
    hide_legend: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        reverse: false
    series_colors: {}
    series_labels:
      snowflake_infobase.target_percentage: Audience
      snowflake_infobase.genpop_percentage: Base
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
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: snowflake_infobase.target_percentage,
            id: snowflake_infobase.target_percentage, name: Audience}, {axisId: snowflake_infobase.genpop_percentage,
            id: snowflake_infobase.genpop_percentage, name: Base}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_types: {}
    show_dropoff: false
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    listen:
      Audience Name: snowflake_infobase.audience_name
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 9
    col: 18
    width: 6
    height: 6
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
    series_types: {}
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 0
    col: 7
    width: 8
    height: 3
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <a href="https://seekvectorlogo.com/acxiom-vector-logo-ai/" target="_blank"><img
      src="https://seekvectorlogo.com/wp-content/uploads/2022/03/acxiom-vector-logo-2022.png"
      /></a>
    row: 0
    col: 18
    width: 6
    height: 3
  filters:
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
    listens_to_filters: []
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
    listens_to_filters: [Client]
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
