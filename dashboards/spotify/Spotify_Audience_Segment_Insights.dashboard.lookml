- dashboard: spotify_audience_segment_insights
  title: Spotify Audience Segment Insights
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: dmGQ2pmGIoUFmhOsg0QVQW
  elements:
  - title: Age
    name: Age
    model: spotify_insights_v1
    explore: audience_segment_insights
    type: looker_column
    fields: [audience_segment_insights.insight_key, audience_segment_insights.insights_value,
      audience_segment_insights.insight_value]
    filters:
      audience_segment_insights.age_group: "-NULL"
    sorts: [audience_segment_insights.insight_key]
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
      custom:
        id: c62ada5c-e52f-fa39-83bc-6d41b5715ba7
        label: Custom
        type: continuous
        stops:
        - color: "#ffffff"
          offset: 0
        - color: "#1DB954"
          offset: 100
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: audience_segment_insights.insights_value,
            id: audience_segment_insights.insights_value, name: Insights Value}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Age
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: ''
    series_types: {}
    series_colors:
      audience_segment_insights.insights_value: "#1DB954"
    series_labels:
      audience_segment_insights.insights_value: Value
    label_color: ["="]
    show_dropoff: false
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: columns
    labelPosition: hidden
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    isStepped: false
    labelOverlap: false
    hidden_fields: [audience_segment_insights.insight_value]
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    up_color: false
    down_color: false
    total_color: false
    value_labels: legend
    label_type: labPer
    listen:
      Country: audience_segment_insights.country
      Audience Segment Name: audience_segment_insights.name
    row: 3
    col: 0
    width: 8
    height: 6
  - title: Gender
    name: Gender
    model: spotify_insights_v1
    explore: audience_segment_insights
    type: looker_pie
    fields: [audience_segment_insights.insight_key, audience_segment_insights.insights_value,
      audience_segment_insights.insight_value]
    filters:
      audience_segment_insights.gender: "-NULL"
    sorts: [audience_segment_insights.insights_value desc]
    limit: 500
    value_labels: labels
    label_type: labPer
    series_colors:
      audience_segment_insights.insights_value: "#1DB954"
      MALE: "#1DB954"
      FEMALE: "#032024"
    series_labels:
      audience_segment_insights.insights_value: Value
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: audience_segment_insights.insights_value,
            id: audience_segment_insights.insights_value, name: Insights Value}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    x_axis_label: Gender
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    label_color: ["="]
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [audience_segment_insights.insight_value]
    defaults_version: 1
    listen:
      Country: audience_segment_insights.country
      Audience Segment Name: audience_segment_insights.name
    row: 3
    col: 8
    width: 8
    height: 6
  - title: Device
    name: Device
    model: spotify_insights_v1
    explore: audience_segment_insights
    type: looker_pie
    fields: [audience_segment_insights.insight_key, audience_segment_insights.insights_value,
      audience_segment_insights.insight_value]
    filters:
      audience_segment_insights.device: "-NULL"
    sorts: [audience_segment_insights.insights_value desc]
    limit: 500
    value_labels: labels
    label_type: labPer
    series_colors:
      mobile: "#1DB954"
      desktop: "#021517"
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
    y_axes: [{label: '', orientation: left, series: [{axisId: audience_segment_insights.insights_value,
            id: audience_segment_insights.insights_value, name: Insights Value}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_fields: [audience_segment_insights.insight_value]
    defaults_version: 1
    series_types: {}
    listen:
      Country: audience_segment_insights.country
      Audience Segment Name: audience_segment_insights.name
    row: 3
    col: 16
    width: 8
    height: 6
  - title: Day of Week
    name: Day of Week
    model: spotify_insights_v1
    explore: audience_segment_insights
    type: looker_column
    fields: [audience_segment_insights.insight_key, audience_segment_insights.insights_value,
      audience_segment_insights.insight_value, audience_segment_insights.days_of_week]
    filters:
      audience_segment_insights.days_of_week: "-NULL"
    sorts: [audience_segment_insights.days_of_week]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: audience_segment_insights.insights_value,
            id: audience_segment_insights.insights_value, name: Insights Value}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Day of Week
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors:
      audience_segment_insights.insights_value: "#1DB954"
    series_labels:
      audience_segment_insights.insights_value: Value
    label_color: ["="]
    hidden_fields: [audience_segment_insights.insight_value, audience_segment_insights.days_of_week]
    defaults_version: 1
    listen:
      Country: audience_segment_insights.country
      Audience Segment Name: audience_segment_insights.name
    row: 9
    col: 8
    width: 8
    height: 6
  - title: Time of Day
    name: Time of Day
    model: spotify_insights_v1
    explore: audience_segment_insights
    type: looker_line
    fields: [audience_segment_insights.time_of_day, audience_segment_insights.insight_value,
      audience_segment_insights.insights_value]
    filters:
      audience_segment_insights.time_of_day: "-NULL"
    sorts: [audience_segment_insights.time_of_day]
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: 0fd66c79-4ba3-377d-14fd-f6a199fc118d
        label: Custom
        type: continuous
        stops:
        - color: "#b9d4c3"
          offset: 0
        - color: "#1DB954"
          offset: 100
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: audience_segment_insights.insights_value,
            id: audience_segment_insights.insights_value, name: Insights Value}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors:
      audience_segment_insights.insights_value: "#1DB954"
    series_labels:
      audience_segment_insights.insights_value: Value
    label_color: ["="]
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
    isStepped: false
    labelOverlap: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [audience_segment_insights.insight_value]
    defaults_version: 1
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: false
    down_color: false
    total_color: false
    hidden_points_if_no: []
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
    listen:
      Country: audience_segment_insights.country
      Audience Segment Name: audience_segment_insights.name
    row: 9
    col: 0
    width: 8
    height: 6
  - title: Field
    name: Field
    model: spotify_insights_v1
    explore: audience_segment_insights
    type: single_value
    fields: [audience_segment_insights.field]
    sorts: [audience_segment_insights.field]
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
      Country: audience_segment_insights.country
      Audience Segment Name: audience_segment_insights.name
    row: 0
    col: 12
    width: 6
    height: 3
  - title: Aggregation
    name: Aggregation
    model: spotify_insights_v1
    explore: audience_segment_insights
    type: single_value
    fields: [audience_segment_insights.aggregation]
    sorts: [audience_segment_insights.aggregation]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    conditional_formatting: [{type: 'null', value: !!null '', background_color: "#1DB954",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: not null, value: !!null '',
        background_color: "#1DB954", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
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
      Country: audience_segment_insights.country
      Audience Segment Name: audience_segment_insights.name
    row: 0
    col: 8
    width: 4
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
  - type: button
    name: button_611
    rich_content_json: '{"text":"Audience Demographics and Insights","description":"","newTab":true,"alignment":"center","size":"large","style":"FILLED","color":"#02080f"}'
    row: 0
    col: 0
    width: 8
    height: 3
  filters:
  - name: Country
    title: Country
    type: field_filter
    default_value: CA
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: spotify_insights_v1
    explore: audience_segment_insights
    listens_to_filters: []
    field: audience_segment_insights.country
  - name: Audience Segment Name
    title: Audience Segment Name
    type: field_filter
    default_value: Automotive Users
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: spotify_insights_v1
    explore: audience_segment_insights
    listens_to_filters: []
    field: audience_segment_insights.name
