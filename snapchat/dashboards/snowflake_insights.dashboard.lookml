- dashboard: snowflake_insights
  title: Snowflake Insights
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: 4ua4cvAJ0yyOjPnGGPzH9T
  elements:
  - title: ''
    name: ''
    model: snowflake_insights
    explore: v1
    type: looker_grid
    fields: [v1.question_level_1]
    sorts: [v1.question_level_1]
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    title_hidden: true
    listen:
      Question Level2: v1.question_level_2
      Question Level3: v1.question_level_3
      Question Level4: v1.question_level_4
      Question Level1: v1.question_level_1
    row: 5
    col: 0
    width: 6
    height: 6
  - title: Target Percentage by Answer
    name: Target Percentage by Answer
    model: snowflake_insights
    explore: v1
    type: looker_bar
    fields: [v1.answer, v1.target_percentage]
    sorts: [v1.target_percentage desc]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: v1.target_percentage,
            id: v1.target_percentage, name: Target Percentage}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      v1.target_percentage: "#18a2da"
    defaults_version: 1
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
    listen:
      Question Level2: v1.question_level_2
      Question Level3: v1.question_level_3
      Question Level4: v1.question_level_4
      Question Level1: v1.question_level_1
    row: 11
    col: 0
    width: 24
    height: 10
  - name: 'Select the Questions you would like to explore:'
    type: text
    title_text: 'Select the Questions you would like to explore:'
    subtitle_text: ''
    body_text: ''
    row: 4
    col: 0
    width: 24
    height: 1
  - title: New Tile
    name: New Tile
    model: snowflake_insights
    explore: v1
    type: looker_grid
    fields: [v1.question_level_2]
    sorts: [v1.question_level_2]
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    title_hidden: true
    listen:
      Question Level2: v1.question_level_2
      Question Level3: v1.question_level_3
      Question Level4: v1.question_level_4
      Question Level1: v1.question_level_1
    row: 5
    col: 6
    width: 6
    height: 6
  - title: Question 3
    name: Question 3
    model: snowflake_insights
    explore: v1
    type: looker_grid
    fields: [v1.question_level_3]
    sorts: [v1.question_level_3]
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    title_hidden: true
    listen:
      Question Level2: v1.question_level_2
      Question Level3: v1.question_level_3
      Question Level4: v1.question_level_4
      Question Level1: v1.question_level_1
    row: 5
    col: 12
    width: 6
    height: 6
  - title: Question 4
    name: Question 4
    model: snowflake_insights
    explore: v1
    type: looker_grid
    fields: [v1.question_level_4]
    sorts: [v1.question_level_4]
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    title_hidden: true
    listen:
      Question Level2: v1.question_level_2
      Question Level3: v1.question_level_3
      Question Level4: v1.question_level_4
      Question Level1: v1.question_level_1
    row: 5
    col: 18
    width: 6
    height: 6
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <img src="https://th.bing.com/th/id/OIP.Spy0NEEj5NTNqFGNag8hwAHaC9?pid=ImgDet&rs=1"
      width="100%" height="25%" border="0" />
    row: 0
    col: 17
    width: 7
    height: 4
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "[logo]: ..C:\\Users\\jsormaz\\Downloads\\Initiative_RGB_GreyBlue.png\n"
    row: 21
    col: 0
    width: 8
    height: 6
  filters:
  - name: Question Level1
    title: Question Level1
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: snowflake_insights
    explore: v1
    listens_to_filters: [Question Level 3, Question Level 4, Question Level 2]
    field: v1.question_level_1
  - name: Question Level2
    title: Question Level2
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: snowflake_insights
    explore: v1
    listens_to_filters: []
    field: v1.question_level_2
  - name: Question Level3
    title: Question Level3
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: snowflake_insights
    explore: v1
    listens_to_filters: []
    field: v1.question_level_3
  - name: Question Level4
    title: Question Level4
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: snowflake_insights
    explore: v1
    listens_to_filters: []
    field: v1.question_level_4
