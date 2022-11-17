- dashboard: media_consumption
  title: Media Consumption
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: IFBEdEaHyOTPSbGDoUAdPy
  elements:
  - title: Internet, Social, TV
    name: Internet, Social, TV
    model: snowflake_insights_v1
    explore: snowflake_mrisimmons
    type: looker_bar
    fields: [snowflake_mrisimmons.answer, snowflake_mrisimmons.index]
    filters:
      snowflake_mrisimmons.summaries_grouped: '"Internet, Social, TV"'
    sorts: [snowflake_mrisimmons.answer]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: snowflake_mrisimmons.index,
            id: snowflake_mrisimmons.index, name: Index}], showLabels: true, showValues: true,
        unpinAxis: true, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      snowflake_mrisimmons.index: "#ffce6a"
    defaults_version: 1
    listen:
      Audience Name: snowflake_mrisimmons.audience_name
      Index: snowflake_mrisimmons.index
      Target Percentage: snowflake_mrisimmons.target_percentage
      Client: snowflake_mrisimmons.client
      Agency: snowflake_mrisimmons.agency
    row: 2
    col: 0
    width: 12
    height: 12
  - name: Media Quintiles/Terciles
    type: text
    title_text: Media Quintiles/Terciles
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 6
    width: 11
    height: 2
  - title: Outdoor, Radio/Audio, Newspapers, Magazines
    name: Outdoor, Radio/Audio, Newspapers, Magazines
    model: snowflake_insights_v1
    explore: snowflake_mrisimmons
    type: looker_bar
    fields: [snowflake_mrisimmons.answer, snowflake_mrisimmons.index]
    filters:
      snowflake_mrisimmons.summaries_grouped: '"Outdoor, Radio/Audio, Newspapers,
        Magazines"'
      snowflake_mrisimmons.question_level_1: MEDIA
      snowflake_mrisimmons.question_level_2: SUMMARIES
      snowflake_mrisimmons.question_level_3: MEDIA QUINTILE/TERCILE CODES
    sorts: [snowflake_mrisimmons.answer]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: snowflake_mrisimmons.index,
            id: snowflake_mrisimmons.index, name: Index}], showLabels: true, showValues: true,
        unpinAxis: true, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      snowflake_mrisimmons.index: "#ffce6a"
    defaults_version: 1
    listen:
      Audience Name: snowflake_mrisimmons.audience_name
      Index: snowflake_mrisimmons.index
      Target Percentage: snowflake_mrisimmons.target_percentage
      Client: snowflake_mrisimmons.client
      Agency: snowflake_mrisimmons.agency
    row: 2
    col: 12
    width: 12
    height: 12
  - name: 'WEBSITES/APPS '
    type: text
    title_text: 'WEBSITES/APPS '
    subtitle_text: Visited or Used in the last 30 days
    body_text: ''
    row: 15
    col: 0
    width: 24
    height: 1
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 14
    col: 0
    width: 24
    height: 1
  - title: Top 10 Websites / Apps by %
    name: Top 10 Websites / Apps by %
    model: snowflake_insights_v1
    explore: snowflake_mrisimmons
    type: looker_column
    fields: [snowflake_mrisimmons.answer, snowflake_mrisimmons.target_percentage,
      snowflake_mrisimmons.index]
    filters:
      snowflake_mrisimmons.question_level_1: MEDIA
      snowflake_mrisimmons.question_level_2: INTERNET
      snowflake_mrisimmons.question_level_3: WEBSITES VISITED OR APPS USED IN THE
        LAST 30 DAYS
    sorts: [snowflake_mrisimmons.target_percentage desc]
    limit: 10
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
    y_axes: [{label: '', orientation: left, series: [{axisId: snowflake_mrisimmons.target_percentage,
            id: snowflake_mrisimmons.target_percentage, name: Target Percentage}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: snowflake_mrisimmons.index, id: snowflake_mrisimmons.index,
            name: Index}], showLabels: true, showValues: true, unpinAxis: true, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types:
      snowflake_mrisimmons.index: line
    series_colors:
      snowflake_mrisimmons.target_percentage: "#18a2da"
      snowflake_mrisimmons.index: "#ffce6a"
    defaults_version: 1
    listen:
      Audience Name: snowflake_mrisimmons.audience_name
      Index: snowflake_mrisimmons.index
      Target Percentage: snowflake_mrisimmons.target_percentage
      Client: snowflake_mrisimmons.client
      Agency: snowflake_mrisimmons.agency
    row: 16
    col: 0
    width: 12
    height: 8
  - title: Top 10 Websites/Apps by Index
    name: Top 10 Websites/Apps by Index
    model: snowflake_insights_v1
    explore: snowflake_mrisimmons
    type: looker_column
    fields: [snowflake_mrisimmons.answer, snowflake_mrisimmons.target_percentage,
      snowflake_mrisimmons.index]
    filters:
      snowflake_mrisimmons.question_level_1: MEDIA
      snowflake_mrisimmons.question_level_2: INTERNET
      snowflake_mrisimmons.question_level_3: WEBSITES VISITED OR APPS USED IN THE
        LAST 30 DAYS
    sorts: [snowflake_mrisimmons.index desc]
    limit: 10
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
    y_axes: [{label: '', orientation: left, series: [{axisId: snowflake_mrisimmons.target_percentage,
            id: snowflake_mrisimmons.target_percentage, name: Target Percentage}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: snowflake_mrisimmons.index, id: snowflake_mrisimmons.index,
            name: Index}], showLabels: true, showValues: true, unpinAxis: true, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types:
      snowflake_mrisimmons.index: line
    series_colors:
      snowflake_mrisimmons.target_percentage: "#18a2da"
      snowflake_mrisimmons.index: "#ffce6a"
    defaults_version: 1
    listen:
      Audience Name: snowflake_mrisimmons.audience_name
      Index: snowflake_mrisimmons.index
      Target Percentage: snowflake_mrisimmons.target_percentage
      Client: snowflake_mrisimmons.client
      Agency: snowflake_mrisimmons.agency
    row: 16
    col: 12
    width: 12
    height: 8
  - title: Websites Visited or Apps Used in the Last 30 Days
    name: Websites Visited or Apps Used in the Last 30 Days
    model: snowflake_insights_v1
    explore: snowflake_mrisimmons
    type: looker_scatter
    fields: [snowflake_mrisimmons.answer, snowflake_mrisimmons.target_percentage,
      snowflake_mrisimmons.index_overall]
    filters:
      snowflake_mrisimmons.question_level_1: MEDIA
      snowflake_mrisimmons.question_level_2: INTERNET
      snowflake_mrisimmons.question_level_3: WEBSITES VISITED OR APPS USED IN THE
        LAST 30 DAYS
    sorts: [snowflake_mrisimmons.target_percentage desc 0]
    limit: 500
    x_axis_gridlines: true
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    series_types: {}
    series_colors:
      snowflake_mrisimmons.target_percentage: "#1c89a3"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#80868B", label: ''}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [snowflake_mrisimmons.answer]
    listen:
      Audience Name: snowflake_mrisimmons.audience_name
      Index: snowflake_mrisimmons.index
      Target Percentage: snowflake_mrisimmons.target_percentage
      Client: snowflake_mrisimmons.client
      Agency: snowflake_mrisimmons.agency
    row: 24
    col: 0
    width: 24
    height: 9
  - title: Top 10 Social Media Visited/ Used by %
    name: Top 10 Social Media Visited/ Used by %
    model: snowflake_insights_v1
    explore: snowflake_mrisimmons
    type: looker_column
    fields: [snowflake_mrisimmons.answer, snowflake_mrisimmons.target_percentage,
      snowflake_mrisimmons.index]
    filters:
      snowflake_mrisimmons.question_level_1: MEDIA
      snowflake_mrisimmons.question_level_2: INTERNET
      snowflake_mrisimmons.question_level_3: "%PHOTO OR VIDEO-SHARING SERVICES VISITED\
        \ OR USED IN THE LAST 30 DAYS%"
    sorts: [snowflake_mrisimmons.target_percentage desc]
    limit: 10
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
    y_axes: [{label: '', orientation: left, series: [{axisId: snowflake_mrisimmons.target_percentage,
            id: snowflake_mrisimmons.target_percentage, name: Target Percentage}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: snowflake_mrisimmons.index, id: snowflake_mrisimmons.index,
            name: Index}], showLabels: true, showValues: true, unpinAxis: true, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types:
      snowflake_mrisimmons.index: line
    series_colors:
      snowflake_mrisimmons.target_percentage: "#18a2da"
      snowflake_mrisimmons.index: "#ffce6a"
    defaults_version: 1
    listen:
      Audience Name: snowflake_mrisimmons.audience_name
      Index: snowflake_mrisimmons.index
      Target Percentage: snowflake_mrisimmons.target_percentage
      Client: snowflake_mrisimmons.client
      Agency: snowflake_mrisimmons.agency
    row: 35
    col: 0
    width: 12
    height: 8
  - title: Top 10 Social Media Visited/Used by Index
    name: Top 10 Social Media Visited/Used by Index
    model: snowflake_insights_v1
    explore: snowflake_mrisimmons
    type: looker_column
    fields: [snowflake_mrisimmons.answer, snowflake_mrisimmons.target_percentage,
      snowflake_mrisimmons.index]
    filters:
      snowflake_mrisimmons.question_level_1: MEDIA
      snowflake_mrisimmons.question_level_2: INTERNET
      snowflake_mrisimmons.question_level_3: "%PHOTO OR VIDEO-SHARING SERVICES VISITED\
        \ OR USED IN THE LAST 30 DAYS%"
    sorts: [snowflake_mrisimmons.index desc]
    limit: 10
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
    y_axes: [{label: '', orientation: left, series: [{axisId: snowflake_mrisimmons.target_percentage,
            id: snowflake_mrisimmons.target_percentage, name: Target Percentage}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: snowflake_mrisimmons.index, id: snowflake_mrisimmons.index,
            name: Index}], showLabels: true, showValues: true, unpinAxis: true, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types:
      snowflake_mrisimmons.index: line
    series_colors:
      snowflake_mrisimmons.target_percentage: "#18a2da"
      snowflake_mrisimmons.index: "#ffce6a"
    defaults_version: 1
    listen:
      Audience Name: snowflake_mrisimmons.audience_name
      Index: snowflake_mrisimmons.index
      Target Percentage: snowflake_mrisimmons.target_percentage
      Client: snowflake_mrisimmons.client
      Agency: snowflake_mrisimmons.agency
    row: 35
    col: 12
    width: 12
    height: 8
  - title: Social Media Visited or Used in the Last 30 Days
    name: Social Media Visited or Used in the Last 30 Days
    model: snowflake_insights_v1
    explore: snowflake_mrisimmons
    type: looker_scatter
    fields: [snowflake_mrisimmons.answer, snowflake_mrisimmons.target_percentage,
      snowflake_mrisimmons.index_overall]
    filters:
      snowflake_mrisimmons.question_level_1: MEDIA
      snowflake_mrisimmons.question_level_2: INTERNET
      snowflake_mrisimmons.question_level_3: "%PHOTO OR VIDEO-SHARING SERVICES VISITED\
        \ OR USED IN THE LAST 30 DAYS%"
    sorts: [snowflake_mrisimmons.target_percentage desc 0]
    limit: 500
    x_axis_gridlines: true
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    series_types: {}
    series_colors:
      snowflake_mrisimmons.target_percentage: "#1c89a3"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#80868B", label: ''}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [snowflake_mrisimmons.answer]
    listen:
      Audience Name: snowflake_mrisimmons.audience_name
      Index: snowflake_mrisimmons.index
      Target Percentage: snowflake_mrisimmons.target_percentage
      Client: snowflake_mrisimmons.client
      Agency: snowflake_mrisimmons.agency
    row: 43
    col: 0
    width: 24
    height: 9
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 52
    col: 0
    width: 24
    height: 1
  - name: TV NETWORKS
    type: text
    title_text: TV NETWORKS
    subtitle_text: Watched in the last 30 days
    body_text: ''
    row: 53
    col: 0
    width: 24
    height: 1
  - name: SOCIAL MEDIA
    type: text
    title_text: SOCIAL MEDIA
    subtitle_text: Visited or Used in the last 30 days
    body_text: ''
    row: 34
    col: 0
    width: 24
    height: 1
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 33
    col: 0
    width: 24
    height: 1
  - title: Top 10 Channels/Networks by %
    name: Top 10 Channels/Networks by %
    model: snowflake_insights_v1
    explore: snowflake_mrisimmons
    type: looker_column
    fields: [snowflake_mrisimmons.answer, snowflake_mrisimmons.target_percentage,
      snowflake_mrisimmons.index]
    filters:
      snowflake_mrisimmons.question_level_1: MEDIA
      snowflake_mrisimmons.question_level_2: TELEVISION
      snowflake_mrisimmons.question_level_3: TELEVISION CHANNELS OR NETWORKS
    sorts: [snowflake_mrisimmons.target_percentage desc]
    limit: 10
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
    y_axes: [{label: '', orientation: left, series: [{axisId: snowflake_mrisimmons.target_percentage,
            id: snowflake_mrisimmons.target_percentage, name: Target Percentage}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: snowflake_mrisimmons.index, id: snowflake_mrisimmons.index,
            name: Index}], showLabels: true, showValues: true, unpinAxis: true, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types:
      snowflake_mrisimmons.index: line
    series_colors:
      snowflake_mrisimmons.target_percentage: "#18a2da"
      snowflake_mrisimmons.index: "#ffce6a"
    defaults_version: 1
    listen:
      Audience Name: snowflake_mrisimmons.audience_name
      Index: snowflake_mrisimmons.index
      Target Percentage: snowflake_mrisimmons.target_percentage
      Client: snowflake_mrisimmons.client
      Agency: snowflake_mrisimmons.agency
    row: 54
    col: 0
    width: 12
    height: 8
  - title: Top 10 Channels or Networks by Index
    name: Top 10 Channels or Networks by Index
    model: snowflake_insights_v1
    explore: snowflake_mrisimmons
    type: looker_column
    fields: [snowflake_mrisimmons.answer, snowflake_mrisimmons.target_percentage,
      snowflake_mrisimmons.index]
    filters:
      snowflake_mrisimmons.question_level_1: MEDIA
      snowflake_mrisimmons.question_level_2: TELEVISION
      snowflake_mrisimmons.question_level_3: TELEVISION CHANNELS OR NETWORKS
    sorts: [snowflake_mrisimmons.index desc]
    limit: 10
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
    y_axes: [{label: '', orientation: left, series: [{axisId: snowflake_mrisimmons.target_percentage,
            id: snowflake_mrisimmons.target_percentage, name: Target Percentage}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: snowflake_mrisimmons.index, id: snowflake_mrisimmons.index,
            name: Index}], showLabels: true, showValues: true, unpinAxis: true, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types:
      snowflake_mrisimmons.index: line
    series_colors:
      snowflake_mrisimmons.target_percentage: "#18a2da"
      snowflake_mrisimmons.index: "#ffce6a"
    defaults_version: 1
    listen:
      Audience Name: snowflake_mrisimmons.audience_name
      Index: snowflake_mrisimmons.index
      Target Percentage: snowflake_mrisimmons.target_percentage
      Client: snowflake_mrisimmons.client
      Agency: snowflake_mrisimmons.agency
    row: 54
    col: 12
    width: 12
    height: 8
  - title: Channels or Networks Watched in the last 30 days
    name: Channels or Networks Watched in the last 30 days
    model: snowflake_insights_v1
    explore: snowflake_mrisimmons
    type: looker_scatter
    fields: [snowflake_mrisimmons.answer, snowflake_mrisimmons.target_percentage,
      snowflake_mrisimmons.index_overall]
    filters:
      snowflake_mrisimmons.question_level_1: MEDIA
      snowflake_mrisimmons.question_level_2: TELEVISION
      snowflake_mrisimmons.question_level_3: TELEVISION CHANNELS OR NETWORKS
    sorts: [snowflake_mrisimmons.target_percentage desc 0]
    limit: 500
    x_axis_gridlines: true
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    series_types: {}
    series_colors:
      snowflake_mrisimmons.target_percentage: "#1c89a3"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#80868B", label: ''}]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [snowflake_mrisimmons.answer]
    listen:
      Audience Name: snowflake_mrisimmons.audience_name
      Index: snowflake_mrisimmons.index
      Target Percentage: snowflake_mrisimmons.target_percentage
      Client: snowflake_mrisimmons.client
      Agency: snowflake_mrisimmons.agency
    row: 62
    col: 0
    width: 24
    height: 9
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 6
    height: 2
  - title: Media Psychographics
    name: Media Psychographics
    model: snowflake_insights_v1
    explore: snowflake_mrisimmons
    type: looker_grid
    fields: [snowflake_mrisimmons.target_percentage, snowflake_mrisimmons.index, snowflake_mrisimmons.psychographics_media,
      snowflake_mrisimmons.question_level_3]
    filters:
      snowflake_mrisimmons.answer: ANY AGREE
      snowflake_mrisimmons.psychographics_media: "-NULL"
    sorts: [snowflake_mrisimmons.psychographics_media]
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
      snowflake_mrisimmons.psychographics_media: 250
      snowflake_mrisimmons.target_percentage: 180
      snowflake_mrisimmons.index: 180
    series_cell_visualizations:
      snowflake_mrisimmons.target_percentage:
        is_active: true
      snowflake_mrisimmons.index:
        is_active: true
    series_types: {}
    defaults_version: 1
    listen:
      Audience Name: snowflake_mrisimmons.audience_name
      Index: snowflake_mrisimmons.index
      Target Percentage: snowflake_mrisimmons.target_percentage
      Client: snowflake_mrisimmons.client
      Agency: snowflake_mrisimmons.agency
    row: 71
    col: 0
    width: 24
    height: 9
  filters:
  - name: Agency
    title: Agency
    type: field_filter
    default_value: INI
    allow_multiple_values: true
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
    default_value: ''
    allow_multiple_values: true
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
    default_value: Guy.Fieri.Foodies.and.Indulgers
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: snowflake_insights_v1
    explore: snowflake_mrisimmons
    listens_to_filters: [Client, Agency]
    field: snowflake_mrisimmons.audience_name
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
