- dashboard: spotify_content_insights
  title: Spotify Content Insights
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: OvFjax1WmWcQGNawOcjIgm
  elements:
  - title: Age
    name: Age
    model: spotify_insights_v1
    explore: content_insights
    type: looker_column
    fields: [content_insights.insight_key, content_insights.value, content_insights.insight_value]
    filters:
      content_insights.dimension: '"age_group"'
    sorts: [content_insights.insight_key]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: content_insights.value,
            id: content_insights.value, name: Value}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Age
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    label_value_format: ''
    series_colors:
      content_insights.value: "#1DB954"
    series_labels:
      content_insights.value: Value
    label_color: ["="]
    defaults_version: 1
    hidden_fields: [content_insights.insight_value]
    listen:
      Content Type: content_insights.content_type
      Country: content_country.content_country
      Name: content_insights.name
    row: 3
    col: 0
    width: 8
    height: 6
  - title: Day of Week
    name: Day of Week
    model: spotify_insights_v1
    explore: content_insights
    type: looker_column
    fields: [content_insights.insight_key, content_insights.value, content_insights.insight_value,
      content_insights.days_of_week]
    filters:
      content_insights.dimension: '"days_of_week"'
    sorts: [content_insights.days_of_week]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: content_insights.value,
            id: content_insights.value, name: Value}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Day of Week
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      content_insights.value: "#1DB954"
    label_color: ["="]
    defaults_version: 1
    hidden_fields: [content_insights.insight_value, content_insights.days_of_week]
    listen:
      Content Type: content_insights.content_type
      Country: content_country.content_country
      Name: content_insights.name
    row: 9
    col: 8
    width: 8
    height: 6
  - title: Device
    name: Device
    model: spotify_insights_v1
    explore: content_insights
    type: looker_column
    fields: [content_insights.insight_key, content_insights.value, content_insights.insight_value]
    filters:
      content_insights.dimension: device
    sorts: [content_insights.value desc]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: content_insights.value,
            id: content_insights.value, name: Value}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Device
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      content_insights.value: "#1DB954"
    label_color: ["="]
    defaults_version: 1
    hidden_fields: [content_insights.insight_value]
    listen:
      Content Type: content_insights.content_type
      Country: content_country.content_country
      Name: content_insights.name
    row: 3
    col: 16
    width: 8
    height: 6
  - title: Gender
    name: Gender
    model: spotify_insights_v1
    explore: content_insights
    type: looker_column
    fields: [content_insights.insight_key, content_insights.value, content_insights.insight_value]
    filters:
      content_insights.dimension: gender
    sorts: [content_insights.value desc]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: content_insights.value,
            id: content_insights.value, name: Value}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Gender
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      content_insights.value: "#1DB954"
    label_color: ["="]
    defaults_version: 1
    hidden_fields: [content_insights.insight_value]
    listen:
      Content Type: content_insights.content_type
      Country: content_country.content_country
      Name: content_insights.name
    row: 3
    col: 8
    width: 8
    height: 6
  - title: Time of Day
    name: Time of Day
    model: spotify_insights_v1
    explore: content_insights
    type: looker_line
    fields: [content_insights.time_of_day, content_insights.insight_value, content_insights.value]
    filters:
      content_insights.dimension: '"time_of_day"'
    sorts: [content_insights.time_of_day]
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
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: content_insights.value,
            id: content_insights.value, name: Value}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors:
      content_insights.value: "#1DB954"
    label_color: ["="]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [content_insights.insight_value]
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
    listen:
      Content Type: content_insights.content_type
      Country: content_country.content_country
      Name: content_insights.name
    row: 9
    col: 0
    width: 8
    height: 6
  - title: Aggregation
    name: Aggregation
    model: spotify_insights_v1
    explore: content_insights
    type: single_value
    fields: [content_insights.aggregation]
    sorts: [content_insights.aggregation]
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
      Content Type: content_insights.content_type
      Country: content_country.content_country
      Name: content_insights.name
    row: 0
    col: 10
    width: 4
    height: 3
  - title: Field
    name: Field
    model: spotify_insights_v1
    explore: content_insights
    type: single_value
    fields: [content_insights.field]
    sorts: [content_insights.field]
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
      Content Type: content_insights.content_type
      Country: content_country.content_country
      Name: content_insights.name
    row: 0
    col: 14
    width: 5
    height: 3
  - title: Untitled
    name: Untitled
    model: spotify_insights_v1
    explore: content_insights
    type: single_value
    fields: [content_insights.content_type]
    sorts: [content_insights.content_type]
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
    single_value_title: Content Type
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
      Content Type: content_insights.content_type
      Name: content_insights.name
    row: 0
    col: 0
    width: 4
    height: 3
  - title: Untitled
    name: Untitled (2)
    model: spotify_insights_v1
    explore: content_insights
    type: single_value
    fields: [content_insights.name]
    sorts: [content_insights.name]
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
    single_value_title: Name
    series_types: {}
    defaults_version: 1
    listen:
      Content Type: content_insights.content_type
      Name: content_insights.name
    row: 0
    col: 4
    width: 6
    height: 3
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <img src="https://upload.wikimedia.org/wikipedia/commons/8/84/Spotify_icon.svg"
      width="72" height="72">
    row: 0
    col: 19
    width: 4
    height: 3
  filters:
  - name: Country
    title: Country
    type: field_filter
    default_value: US
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: spotify_insights_v1
    explore: content_insights
    listens_to_filters: []
    field: content_country.content_country
  - name: Content Type
    title: Content Type
    type: field_filter
    default_value: playlist
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: spotify_insights_v1
    explore: content_insights
    listens_to_filters: []
    field: content_insights.content_type
  - name: Name
    title: Name
    type: field_filter
    default_value: Happy Drive
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: spotify_insights_v1
    explore: content_insights
    listens_to_filters: [Country]
    field: content_insights.name
