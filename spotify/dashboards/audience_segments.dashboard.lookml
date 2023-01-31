- dashboard: spotify_audience_segments_sven_draft
  title: Spotify Audience Segments (Sven Draft)
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: yO808OB7cjhg8eC4c0aaka
  elements:
  - title: Age Group Distribution
    name: Age Group Distribution
    model: spotify_insights
    explore: audience_segment_insights
    type: looker_column
    fields: [age_group.age_group, age_group_minutes_percent.age_group_minutes_percent]
    filters: {}
    sorts: [age_group.age_group]
    limit: 500
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
    label_value_format: '0.00'
    series_types: {}
    defaults_version: 1
    listen:
      Country: audience_segment_insights.country
      Segment Name: audience_segment_insights.segment_name
      Gender: gender.gender
      Age Group: age_group.age_group
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Gender Distribution
    name: Gender Distribution
    model: spotify_insights
    explore: audience_segment_insights
    type: looker_column
    fields: [gender.gender, gender_minutes_percent.gender_minutes_percent]
    filters: {}
    sorts: [gender_minutes_percent.gender_minutes_percent desc 0]
    limit: 500
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
    label_value_format: '0.00'
    series_types: {}
    defaults_version: 1
    listen:
      Country: audience_segment_insights.country
      Segment Name: audience_segment_insights.segment_name
      Gender: gender.gender
      Age Group: age_group.age_group
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Device Distribution
    name: Device Distribution
    model: spotify_insights
    explore: audience_segment_insights
    type: looker_column
    fields: [device.device, device_minutes_percent.device_minutes_percent]
    filters: {}
    sorts: [device_minutes_percent.device_minutes_percent desc 0]
    limit: 500
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
    label_value_format: '0.00'
    series_types: {}
    defaults_version: 1
    listen:
      Country: audience_segment_insights.country
      Segment Name: audience_segment_insights.segment_name
      Gender: gender.gender
      Age Group: age_group.age_group
      Device: device.device
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Time of Day Distribution
    name: Time of Day Distribution
    model: spotify_insights
    explore: audience_segment_insights
    type: looker_column
    fields: [device_minutes_percent.device_minutes_percent, time_of_day.time_of_day]
    filters: {}
    sorts: [device_minutes_percent.device_minutes_percent desc 0]
    limit: 500
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
    label_value_format: '0.00'
    series_types: {}
    defaults_version: 1
    listen:
      Country: audience_segment_insights.country
      Segment Name: audience_segment_insights.segment_name
      Gender: gender.gender
      Age Group: age_group.age_group
      Device: device.device
      Time of Day: time_of_day.time_of_day
    row: 6
    col: 0
    width: 8
    height: 6
  - title: Days of Week Distribution
    name: Days of Week Distribution
    model: spotify_insights
    explore: audience_segment_insights
    type: looker_column
    fields: [days_of_week.days_of_week, days_of_week_minutes_percent.days_of_week_minutes_percent]
    filters: {}
    sorts: [days_of_week_minutes_percent.days_of_week_minutes_percent desc]
    limit: 500
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
    label_value_format: '0.00'
    series_types: {}
    defaults_version: 1
    listen:
      Country: audience_segment_insights.country
      Segment Name: audience_segment_insights.segment_name
      Days of Week: days_of_week.days_of_week
    row:
    col:
    width:
    height:
  filters:
  - name: Country
    title: Country
    type: field_filter
    default_value: US
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: spotify_insights
    explore: audience_segment_insights
    listens_to_filters: []
    field: audience_segment_insights.country
  - name: Segment Name
    title: Segment Name
    type: field_filter
    default_value: Automotive Users
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: spotify_insights
    explore: audience_segment_insights
    listens_to_filters: []
    field: audience_segment_insights.segment_name
  - name: Gender
    title: Gender
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: spotify_insights
    explore: audience_segment_insights
    listens_to_filters: []
    field: gender.gender
  - name: Age Group
    title: Age Group
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: spotify_insights
    explore: audience_segment_insights
    listens_to_filters: []
    field: age_group.age_group
  - name: Device
    title: Device
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: spotify_insights
    explore: audience_segment_insights
    listens_to_filters: []
    field: device.device
  - name: Time of Day
    title: Time of Day
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: spotify_insights
    explore: audience_segment_insights
    listens_to_filters: []
    field: time_of_day.time_of_day
  - name: Days of Week
    title: Days of Week
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: spotify_insights
    explore: audience_segment_insights
    listens_to_filters: []
    field: days_of_week.days_of_week
