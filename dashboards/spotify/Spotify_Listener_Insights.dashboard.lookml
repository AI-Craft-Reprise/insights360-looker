- dashboard: spotify_listener_insights
  title: Spotify Listener Insights
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: QIGCkwJ2lpaYhuAUchpnMx
  elements:
  - title: City
    name: City
    model: spotify_insights_v1
    explore: listener_insights
    type: looker_grid
    fields: [listener_insights.insight_key, listener_insights.insight_value, listener_insights.value,
      listener_insights.aggregation, listener_insights.field]
    filters:
      listener_insights.dimension: city
    sorts: [listener_insights.value desc]
    limit: 500
    show_view_names: false
    show_row_numbers: false
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
      listener_insights.value:
        is_active: true
        palette:
          palette_id: 20db8006-da76-b1a8-36fd-9598ab06cc8f
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#b8ffbf"
          - "#25e863"
          - "#1DB954"
    hidden_fields: [listener_insights.insight_value]
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
      Aggregation: listener_insights.aggregation
      Field: listener_insights.field
      Country: listener_country.listener_country
      Age: listener_age.age
      Gender: listener_gender.gender
    row: 0
    col: 0
    width: 12
    height: 6
  - title: Days of Week
    name: Days of Week
    model: spotify_insights_v1
    explore: listener_insights
    type: looker_grid
    fields: [listener_insights.insight_key, listener_insights.insight_value, listener_insights.aggregation_sort,
      listener_insights.value, listener_insights.days_of_week, listener_insights.aggregation,
      listener_insights.field]
    filters:
      listener_insights.dimension: '"days_of_week"'
    sorts: [listener_insights.aggregation, listener_insights.days_of_week]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
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
      listener_insights.value:
        is_active: true
        palette:
          palette_id: 6b83117e-dfe4-69a3-fa08-5c9c7fa510b4
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#b8ffbf"
          - "#25e863"
          - "#1DB954"
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
    hidden_fields: [listener_insights.insight_value, listener_insights.aggregation_sort,
      listener_insights.days_of_week]
    series_types: {}
    listen:
      Field: listener_insights.field
      Aggregation: listener_insights.aggregation
      Country: listener_country.listener_country
      Age: listener_age.age
      Gender: listener_gender.gender
    row: 12
    col: 12
    width: 12
    height: 6
  - title: Genre
    name: Genre
    model: spotify_insights_v1
    explore: listener_insights
    type: looker_grid
    fields: [listener_insights.insight_key, listener_insights.insight_value, listener_insights.value,
      listener_insights.aggregation, listener_insights.field]
    filters:
      listener_insights.dimension: genre
    sorts: [listener_insights.value desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
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
      listener_insights.value:
        is_active: true
        palette:
          palette_id: 87120867-78c0-9e24-1514-e5d5b84813ab
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#b8ffbf"
          - "#25e863"
          - "#1DB954"
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
    hidden_fields: [listener_insights.insight_value]
    series_types: {}
    listen:
      Field: listener_insights.field
      Aggregation: listener_insights.aggregation
      Country: listener_country.listener_country
      Age: listener_age.age
      Gender: listener_gender.gender
    row: 3
    col: 12
    width: 12
    height: 9
  - title: Platform
    name: Platform
    model: spotify_insights_v1
    explore: listener_insights
    type: looker_grid
    fields: [listener_insights.insight_key, listener_insights.insight_value, listener_insights.value,
      listener_insights.aggregation, listener_insights.field]
    filters:
      listener_insights.dimension: platform
    sorts: [listener_insights.value desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
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
      listener_insights.value:
        is_active: true
        palette:
          palette_id: 6a588b0d-c2f5-19a8-55e8-57fa13d78b09
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#b8ffbf"
          - "#25e863"
          - "#1DB954"
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
    hidden_fields: [listener_insights.insight_value]
    series_types: {}
    listen:
      Field: listener_insights.field
      Aggregation: listener_insights.aggregation
      Country: listener_country.listener_country
      Age: listener_age.age
      Gender: listener_gender.gender
    row: 6
    col: 0
    width: 12
    height: 6
  - title: Hour of Day
    name: Hour of Day
    model: spotify_insights_v1
    explore: listener_insights
    type: looker_grid
    fields: [listener_insights.insight_key, listener_insights.insight_value, listener_insights.value,
      listener_insights.aggregation, listener_insights.field, listener_insights.hour_of_day]
    filters:
      listener_insights.dimension: '"time_of_day"'
    sorts: [listener_insights.hour_of_day]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
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
      listener_insights.value:
        is_active: true
        palette:
          palette_id: 2d524ca2-1218-b344-126c-be5a0edaac1d
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#b8ffbf"
          - "#25e863"
          - "#1DB954"
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
    hidden_fields: [listener_insights.insight_value, listener_insights.hour_of_day]
    series_types: {}
    listen:
      Field: listener_insights.field
      Aggregation: listener_insights.aggregation
      Country: listener_country.listener_country
      Age: listener_age.age
      Gender: listener_gender.gender
    row: 12
    col: 0
    width: 12
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <img src="https://upload.wikimedia.org/wikipedia/commons/8/84/Spotify_icon.svg"
      width="72" height="72">
    row: 0
    col: 13
    width: 7
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
    explore: listener_insights
    listens_to_filters: []
    field: listener_country.listener_country
  - name: Age
    title: Age
    type: field_filter
    default_value: 25-34
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: spotify_insights_v1
    explore: listener_insights
    listens_to_filters: []
    field: listener_age.age
  - name: Gender
    title: Gender
    type: field_filter
    default_value: MALE
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: spotify_insights_v1
    explore: listener_insights
    listens_to_filters: []
    field: listener_gender.gender
  - name: Field
    title: Field
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: spotify_insights_v1
    explore: listener_insights
    listens_to_filters: []
    field: listener_insights.field
  - name: Aggregation
    title: Aggregation
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: spotify_insights_v1
    explore: listener_insights
    listens_to_filters: []
    field: listener_insights.aggregation
