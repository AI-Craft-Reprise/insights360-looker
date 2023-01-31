- dashboard: linkedin_audience_insights
  title: LinkedIn Audience Insights
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: vRMqVD4mq1HX8jcaJ0DETS
  elements:
  - title: Titles
    name: Titles
    model: linkedin_v1
    explore: audience_insights
    type: looker_grid
    fields: [ad_targeting_entities.facet_name, ad_targeting_entities.name, segmentations.Count,
      segmentations.Percentage]
    filters:
      ad_targeting_entities.facets: titles
    sorts: [segmentations.Count desc]
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
      ad_targeting_entities.facets: 120
      segmentations.Percentage: 120
      ad_targeting_entities.facet_name: 120
    series_cell_visualizations:
      segmentations.Count:
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
    listen: {}
    row: 2
    col: 12
    width: 12
    height: 6
  - title: Years of Experience
    name: Years of Experience
    model: linkedin_v1
    explore: audience_insights
    type: looker_grid
    fields: [ad_targeting_entities.facet_name, ad_targeting_entities.name, segmentations.Count,
      segmentations.Percentage]
    filters:
      ad_targeting_entities.facets: yearsOfExperienceRanges
    sorts: [segmentations.Count desc]
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
      ad_targeting_entities.facets: 160
      segmentations.Percentage: 120
      ad_targeting_entities.facet_name: 160
    series_cell_visualizations:
      segmentations.Count:
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
    listen: {}
    row: 2
    col: 0
    width: 12
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 20
    height: 2
  - title: Skills
    name: Skills
    model: linkedin_v1
    explore: audience_insights
    type: looker_grid
    fields: [ad_targeting_entities.facet_name, ad_targeting_entities.name, segmentations.Count,
      segmentations.Percentage]
    filters:
      ad_targeting_entities.facet_name: Skill
    sorts: [segmentations.Count desc]
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
      ad_targeting_entities.facets: 160
      segmentations.Percentage: 120
      ad_targeting_entities.facet_name: 160
    series_cell_visualizations:
      segmentations.Count:
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
    listen: {}
    row: 8
    col: 0
    width: 12
    height: 6
