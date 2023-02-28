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
    fields: [segmentations.Count, segmentations.Percentage, audience_insights_entities.entity_name]
    filters:
      audience_insights_entities.facet_urn: "%title%"
    sorts: [segmentations.Count desc]
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
    series_labels:
      segmentations.Count: Count
      audience_insights_entities.entity_name: Title Name
    series_column_widths:
      ad_targeting_entities.facets: 120
      segmentations.Percentage: 120
      ad_targeting_entities.facet_name: 120
    series_cell_visualizations:
      segmentations.Count:
        is_active: true
        palette:
          palette_id: 6b641bf2-b8f0-8b21-f051-fe47b4ccedf8
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#7CB342"
          - "#24c1e0"
          - "#1a73e8"
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
      'Audience Name and Date Created ': audience_insights_requests.name_created_date
    row: 6
    col: 12
    width: 12
    height: 6
  - title: Years of Experience
    name: Years of Experience
    model: linkedin_v1
    explore: audience_insights
    type: looker_column
    fields: [segmentations.Count, segmentations.Percentage, audience_insights_entities.entity_name]
    filters:
      audience_insights_entities.facet_urn: "%yearsOfExperience%"
    sorts: [segmentations.Count desc]
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: segmentations.Count,
            id: segmentations.Count, name: Count}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: segmentations.Percentage,
            id: segmentations.Percentage, name: Percentage}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_labels:
      segmentations.Count: Count
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
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
    defaults_version: 1
    hidden_pivots: {}
    listen:
      'Audience Name and Date Created ': audience_insights_requests.name_created_date
    row: 6
    col: 0
    width: 12
    height: 6
  - title: Skills
    name: Skills
    model: linkedin_v1
    explore: audience_insights
    type: looker_grid
    fields: [segmentations.Count, segmentations.Percentage, audience_insights_entities.entity_name]
    filters:
      audience_insights_entities.facet_urn: "%skill%"
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
    series_labels:
      segmentations.Count: Count
      audience_insights_entities.entity_name: Skills
    series_column_widths:
      ad_targeting_entities.facets: 160
      segmentations.Percentage: 120
      ad_targeting_entities.facet_name: 160
    series_cell_visualizations:
      segmentations.Count:
        is_active: true
        palette:
          palette_id: a15ae47c-60c0-b647-bf5c-44fdaa1bd8eb
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#7CB342"
          - "#24c1e0"
          - "#1a73e8"
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
      'Audience Name and Date Created ': audience_insights_requests.name_created_date
    row: 12
    col: 0
    width: 12
    height: 6
  - title: Total Audience Count
    name: Total Audience Count
    model: linkedin_v1
    explore: audience_insights
    type: single_value
    fields: [audience_insights.totalaudiencecount]
    sorts: [audience_insights.totalaudiencecount]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    custom_color: "#079c98"
    single_value_title: Total Audience
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
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
      'Audience Name and Date Created ': audience_insights_requests.name_created_date
    row: 1
    col: 0
    width: 5
    height: 3
  - title: Interests
    name: Interests
    model: linkedin_v1
    explore: audience_insights
    type: looker_grid
    fields: [segmentations.Count, segmentations.Percentage, audience_insights_entities.entity_name,
      audience_insights_entities.facet_urn]
    filters:
      audience_insights_entities.facet_urn: "%interest%"
    sorts: [segmentations.Count desc]
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
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      audience_insights_entities.entity_name: Interest
      segmentations.Count: Count
    series_cell_visualizations:
      segmentations.Count:
        is_active: true
        palette:
          palette_id: e3959a17-a4ba-38d1-79b1-de7d130c0f9c
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#7CB342"
          - "#24c1e0"
          - "#1a73e8"
    hidden_fields: [audience_insights_entities.facet_urn]
    defaults_version: 1
    listen:
      'Audience Name and Date Created ': audience_insights_requests.name_created_date
    row: 12
    col: 12
    width: 12
    height: 6
  - title: Countries
    name: Countries
    model: linkedin_v1
    explore: audience_insights
    type: looker_grid
    fields: [segmentations.Count, segmentations.Percentage, audience_insights_entities.entity_name,
      audience_insights_entities.facet_urn]
    filters:
      audience_insights_entities.entity_urn: "%geo%"
      audience_insights.groupedby: urn:li:adTargetingFacet:bingCountry
    sorts: [segmentations.Count desc]
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
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      audience_insights_entities.entity_name: Geography
      segmentations.Count: Count
    series_cell_visualizations:
      segmentations.Count:
        is_active: true
        palette:
          palette_id: f444fd87-a9cb-1528-3a09-1acf770391c9
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#7CB342"
          - "#24c1e0"
          - "#1a73e8"
    hidden_fields: [audience_insights_entities.facet_urn]
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
      'Audience Name and Date Created ': audience_insights_requests.name_created_date
    row: 18
    col: 0
    width: 12
    height: 7
  - title: Job Function
    name: Job Function
    model: linkedin_v1
    explore: audience_insights
    type: looker_grid
    fields: [targeting_criteria_value.targeting_criteria_value, ad_targeting_entities.name]
    filters:
      audience_insights.audience_name: ''
      targeting_criteria_value.targeting_criteria_value: "%function%"
    sorts: [targeting_criteria_value.targeting_criteria_value]
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
    series_labels:
      ad_targeting_entities.name: Job Function
    series_text_format:
      ad_targeting_entities.name:
        bg_color: "#f5fcff"
    header_font_color: "#fffef4"
    header_background_color: "#079c98"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: [targeting_criteria_value.targeting_criteria_value]
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
      'Audience Name and Date Created ': audience_insights_requests.name_created_date
    row: 0
    col: 15
    width: 3
    height: 4
  - title: Industry
    name: Industry
    model: linkedin_v1
    explore: audience_insights
    type: looker_grid
    fields: [targeting_criteria_value.targeting_criteria_value, ad_targeting_entities.name]
    filters:
      audience_insights.audience_name: ''
      targeting_criteria_value.targeting_criteria_value: "%industry%"
    sorts: [targeting_criteria_value.targeting_criteria_value]
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
    series_labels:
      ad_targeting_entities.name: Industry
    series_text_format:
      ad_targeting_entities.name:
        bg_color: "#f5fcff"
    header_font_color: "#fffbf4"
    header_background_color: "#079c98"
    hidden_fields: [targeting_criteria_value.targeting_criteria_value]
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    title_hidden: true
    listen:
      'Audience Name and Date Created ': audience_insights_requests.name_created_date
    row: 0
    col: 11
    width: 4
    height: 4
  - title: Seniority
    name: Seniority
    model: linkedin_v1
    explore: audience_insights
    type: looker_grid
    fields: [targeting_criteria_value.targeting_criteria_value, ad_targeting_entities.name]
    filters:
      targeting_criteria_value.targeting_criteria_value: "%seniority%"
    sorts: [targeting_criteria_value.targeting_criteria_value]
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
    series_labels:
      ad_targeting_entities.name: Job Seniority
    series_text_format:
      ad_targeting_entities.name:
        bg_color: "#f5fcff"
    header_font_color: "#f5ffff"
    header_background_color: "#079c98"
    hidden_fields: [targeting_criteria_value.targeting_criteria_value]
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    title_hidden: true
    listen:
      'Audience Name and Date Created ': audience_insights_requests.name_created_date
    row: 0
    col: 18
    width: 3
    height: 4
  - title: Company Size
    name: Company Size
    model: linkedin_v1
    explore: audience_insights
    type: looker_grid
    fields: [targeting_criteria_value.targeting_criteria_value, ad_targeting_entities.name]
    filters:
      audience_insights.audience_name: ''
      targeting_criteria_value.targeting_criteria_value: "%staff%"
    sorts: [targeting_criteria_value.targeting_criteria_value]
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
    series_labels:
      ad_targeting_entities.name: Company Size
    series_text_format:
      ad_targeting_entities.name:
        bg_color: "#f5fcff"
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    header_font_color: "#fffbf4"
    header_background_color: "#079c98"
    hidden_fields: [targeting_criteria_value.targeting_criteria_value]
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    title_hidden: true
    listen:
      'Audience Name and Date Created ': audience_insights_requests.name_created_date
    row: 0
    col: 8
    width: 3
    height: 4
  - title: Country
    name: Country
    model: linkedin_v1
    explore: audience_insights
    type: looker_grid
    fields: [targeting_criteria_value.targeting_criteria_value, audience_insights_entities_country.entity_name]
    filters:
      targeting_criteria_value.targeting_criteria_value: "%geo%"
      audience_insights_entities_country.facet_urn: urn:li:adTargetingFacet:bingCountry
    sorts: [targeting_criteria_value.targeting_criteria_value]
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
    series_labels:
      ad_targeting_entities.name: Seniority
      audience_insights_entities.entity_name: Country
      audience_insights_entities_country.entity_name: Country
    series_text_format:
      audience_insights_entities_country.entity_name:
        bg_color: "#f5fcff"
    header_font_color: "#fffbf4"
    header_background_color: "#079c98"
    hidden_fields: [targeting_criteria_value.targeting_criteria_value]
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    title_hidden: true
    listen:
      'Audience Name and Date Created ': audience_insights_requests.name_created_date
    row: 0
    col: 5
    width: 3
    height: 4
  - title: Cities
    name: Cities
    model: linkedin_v1
    explore: audience_insights
    type: looker_grid
    fields: [segmentations.Count, segmentations.Percentage, audience_insights_entities.entity_name,
      audience_insights_entities.facet_urn]
    filters:
      audience_insights_entities.entity_urn: "%geo%"
      audience_insights.groupedby: urn:li:adTargetingFacet:bingCity
    sorts: [segmentations.Count desc]
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
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      audience_insights_entities.entity_name: Geography
      segmentations.Count: Count
    series_cell_visualizations:
      segmentations.Count:
        is_active: true
        palette:
          palette_id: 30fda225-58bc-8c6c-386a-d6a046917e4c
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#7CB342"
          - "#24c1e0"
          - "#1a73e8"
    hidden_fields: [audience_insights_entities.facet_urn]
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
      'Audience Name and Date Created ': audience_insights_requests.name_created_date
    row: 18
    col: 12
    width: 12
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |2-

      <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/LinkedIn_logo_initials.png/900px-LinkedIn_logo_initials.png?20140125013055" width="72" height="72">
    row: 0
    col: 21
    width: 3
    height: 3
  - type: button
    name: button_591
    rich_content_json: '{"text":"Audience Definition","description":"","newTab":true,"alignment":"center","size":"large","style":"OUTLINED","color":"#079c98"}'
    row: 0
    col: 0
    width: 5
    height: 1
  - type: button
    name: button_592
    rich_content_json: '{"text":"Audience Insights","description":"","newTab":true,"alignment":"center","size":"large","style":"OUTLINED","color":"#079c98"}'
    row: 4
    col: 0
    width: 24
    height: 2
  filters:
  - name: 'Audience Name and Date Created '
    title: 'Audience Name and Date Created '
    type: field_filter
    default_value: '"UK, MX, JP, GER, 2023-01-17T15:41:12+00:00 UTC"'
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: linkedin_v1
    explore: audience_insights
    listens_to_filters: []
    field: audience_insights_requests.name_created_date
