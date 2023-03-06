- dashboard: spotify_streaming_and_listener_insights
  title: Spotify Streaming and Listener Insights
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: OivoehOfKMt5TGVNH1Gas7
  elements:
  - title: Value by City
    name: Value by City
    model: spotify_insights
    explore: listener_insights
    type: looker_grid
    fields: [listener_insights.city, listener_insights.field, listener_insights.insight_value]
    filters: {}
    sorts: [listener_insights.field]
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
    rows_font_size: '14'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels: {}
    series_cell_visualizations:
      listener_insights.insight_value:
        is_active: false
    series_text_format:
      listener_insights.field: {}
      listener_insights.insight_value:
        bold: true
    header_font_color: "#80868B"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    show_null_points: true
    interpolation: linear
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
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Aggregation: listener_insights.aggregation
      Field: listener_insights.field
      City: listener_insights.city
    row: 0
    col: 0
    width: 7
    height: 3
  - title: Value by Platform
    name: Value by Platform
    model: spotify_insights
    explore: listener_insights
    type: looker_grid
    fields: [listener_insights.platform, listener_insights.field, listener_insights.insight_value]
    filters: {}
    sorts: [listener_insights.field]
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
    rows_font_size: '14'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels: {}
    series_cell_visualizations:
      listener_insights.insight_value:
        is_active: false
    series_text_format:
      listener_insights.field: {}
      listener_insights.insight_value:
        bold: true
    header_font_color: "#80868B"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    show_null_points: true
    interpolation: linear
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
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Aggregation: listener_insights.aggregation
      Field: listener_insights.field
      Platform: listener_insights.platform
    row: 0
    col: 7
    width: 7
    height: 3
  filters:
  - name: Field
    title: Field
    type: field_filter
    default_value: minutes
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: spotify_insights
    explore: listener_insights
    listens_to_filters: []
    field: listener_insights.field
  - name: Aggregation
    title: Aggregation
    type: field_filter
    default_value: week
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: spotify_insights
    explore: listener_insights
    listens_to_filters: []
    field: listener_insights.aggregation
  - name: City
    title: City
    type: field_filter
    default_value: London
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: spotify_insights
    explore: listener_insights
    listens_to_filters: []
    field: listener_insights.city
  - name: Platform
    title: Platform
    type: field_filter
    default_value: Mobile
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: spotify_insights
    explore: listener_insights
    listens_to_filters: []
    field: listener_insights.platform
