- dashboard: custom_audiences__top_30_segments
  title: Custom Audiences - Top 30 segments
  layout: newspaper
  preferred_viewer: dashboards-next
  load_configuration: wait
  description: ''
  preferred_slug: ajq0xV6XAMIGGpSyvSmW7D
  elements:
  - title: Amazon Persona Insights Min Est Size
    name: Amazon Persona Insights Min Est Size
    model: amazon_v1
    explore: persona_insights
    type: single_value
    fields: [persona_insights.min_estimated_size]
    sorts: [persona_insights.min_estimated_size]
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
    custom_color: "#E8710A"
    single_value_title: min est size
    value_format: ''
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#E8710A",
        font_color: "#050200", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    defaults_version: 1
    series_types: {}
    listen:
      'Audience Name ': personas.audience_name_date
    row: 1
    col: 5
    width: 3
    height: 2
  - title: Amazon Persona Insights Max Est Size
    name: Amazon Persona Insights Max Est Size
    model: amazon_v1
    explore: persona_insights
    type: single_value
    fields: [persona_insights.max_estimated_size]
    sorts: [persona_insights.max_estimated_size]
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
    custom_color: "#E8710A"
    single_value_title: max est size
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#E8710A",
        font_color: "#01050a", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    defaults_version: 1
    series_types: {}
    listen:
      'Audience Name ': personas.audience_name_date
    row: 3
    col: 5
    width: 3
    height: 2
  - title: In Market
    name: In Market
    model: amazon_v1
    explore: persona_insights
    type: looker_grid
    fields: [inmarket.name, inmarket.total_percentage, inmarket.total_affinity]
    filters:
      inmarket.total_percentage: ">=0.01"
    sorts: [inmarket.total_affinity desc]
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      inmarket.total_affinity: Overlap Index
    series_column_widths:
      inmarket.name: 290
      inmarket.total_percentage: 120
      inmarket.total_affinity: 240
    series_cell_visualizations:
      inmarket.total_percentage:
        is_active: false
        palette:
          palette_id: cd7f867e-3195-579d-84c4-60f0480889fa
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffe6bf"
          - "#e89c35"
          - "#e87712"
      inmarket.total_affinity:
        is_active: true
        palette:
          palette_id: 2ba861f7-31a4-fe90-c2b6-43b1f0cd8a07
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffe6bf"
          - "#e89c35"
          - "#e87712"
    series_text_format:
      inmarket.name: {}
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    header_background_color: ''
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 4a00499b-c0fe-4b15-a304-4083c07ff4c4}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_value_format:
      inmarket.total_percentage:
        name: percent_0
        decimals: '0'
        format_string: "#,##0%"
        label: Percent (0)
        label_prefix: Percent
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
      'Audience Name ': personas.audience_name_date
    row: 21
    col: 0
    width: 12
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 45
    col: 17
    width: 7
    height: 1
  - title: Income
    name: Income
    model: amazon_v1
    explore: persona_insights
    type: looker_column
    fields: [income.income_attribute, income.total_income_percentage, income.total_income_affinity]
    sorts: [income.income_attribute]
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
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Percentage, orientation: left, series: [{axisId: income.total_income_percentage,
            id: income.total_income_percentage, name: Percentage}], showLabels: true,
        showValues: true, maxValue: !!null '', unpinAxis: false, tickDensity: default,
        type: linear}, {label: Index, orientation: right, series: [{axisId: income.total_income_affinity,
            id: income.total_income_affinity, name: Index}], showLabels: true, showValues: true,
        maxValue: !!null '', minValue: 0, unpinAxis: true, tickDensity: default, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: true
    series_types:
      age.total_age_affinity: line
      income.total_income_affinity: line
    series_colors:
      age.total_age_affinity: "#F9AB00"
      income.total_income_affinity: "#80868B"
      income.total_income_percentage: "#ffcb7d"
    series_labels:
      income.total_income_percentage: Percentage
      income.total_income_affinity: Index
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
      inmarket.name: 320
    series_cell_visualizations:
      inmarket.total_percentage:
        is_active: false
      inmarket.total_affinity:
        is_active: true
    defaults_version: 1
    listen:
      'Audience Name ': personas.audience_name_date
    row: 13
    col: 3
    width: 9
    height: 6
  - title: Property Ownership
    name: Property Ownership
    model: amazon_v1
    explore: persona_insights
    type: looker_column
    fields: [propertyownership.property_ownership_attribute, propertyownership.total_property_ownership_percentage,
      propertyownership.total_property_ownership_affinity]
    sorts: [propertyownership.total_property_ownership_percentage desc 0]
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
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Percentage, orientation: left, series: [{axisId: propertyownership.total_property_ownership_percentage,
            id: propertyownership.total_property_ownership_percentage, name: Percentage}],
        showLabels: true, showValues: true, maxValue: 1, unpinAxis: false, tickDensity: default,
        type: linear}, {label: Index, orientation: right, series: [{axisId: propertyownership.total_property_ownership_affinity,
            id: propertyownership.total_property_ownership_affinity, name: Index}],
        showLabels: true, showValues: true, maxValue: !!null '', minValue: 0, unpinAxis: true,
        tickDensity: default, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: true
    series_types:
      age.total_age_affinity: line
      propertyownership.total_property_ownership_affinity: line
    series_colors:
      age.total_age_affinity: "#F9AB00"
      propertyownership.total_property_ownership_affinity: "#80868B"
      propertyownership.total_property_ownership_percentage: "#ffcb7d"
    series_labels:
      propertyownership.total_property_ownership_percentage: Percentage
      propertyownership.total_property_ownership_affinity: Index
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
      inmarket.name: 320
    series_cell_visualizations:
      inmarket.total_percentage:
        is_active: false
      inmarket.total_affinity:
        is_active: true
    defaults_version: 1
    listen:
      'Audience Name ': personas.audience_name_date
    row: 13
    col: 12
    width: 6
    height: 6
  - title: Interests
    name: Interests
    model: amazon_v1
    explore: persona_insights
    type: looker_grid
    fields: [interests.name, interests.total_percentage, interests.total_affinity]
    filters:
      interests.total_percentage: ">=0.01"
    sorts: [interests.total_affinity desc 0]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
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
      interests.total_percentage: Total Percentage
      interests.total_affinity: Overlap Index
    series_column_widths:
      inmarket.name: 320
      interests.name: 350
      interests.total_percentage: 110
      interests.total_affinity: 200
    series_cell_visualizations:
      inmarket.total_percentage:
        is_active: false
      inmarket.total_affinity:
        is_active: true
      interests.total_affinity:
        is_active: true
        palette:
          palette_id: 7c8f4749-5444-d1d0-70f6-64b069367c9b
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffe6bf"
          - "#e89c35"
          - "#e87712"
      interests.total_percentage:
        is_active: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_value_format:
      interests.total_percentage:
        name: percent_0
        decimals: '0'
        format_string: "#,##0%"
        label: Percent (0)
        label_prefix: Percent
      interests.total_affinity:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
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
      'Audience Name ': personas.audience_name_date
    row: 28
    col: 12
    width: 12
    height: 7
  - title: Life Events
    name: Life Events
    model: amazon_v1
    explore: persona_insights
    type: looker_grid
    fields: [lifeevents.name, lifeevents.total_percentage, lifeevents.total_affinity]
    filters:
      lifeevents.total_percentage: ">=0.01"
    sorts: [lifeevents.total_affinity desc 0]
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
    series_labels:
      lifeevents.total_affinity: Overlap Index
    series_column_widths:
      inmarket.name: 320
    series_cell_visualizations:
      inmarket.total_percentage:
        is_active: false
      inmarket.total_affinity:
        is_active: true
      interests.total_affinity:
        is_active: true
      lifeevents.total_affinity:
        is_active: true
        palette:
          palette_id: eab9caec-3fe1-7b1b-d047-845589b7a8cc
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffe6bf"
          - "#e89c35"
          - "#e87712"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_value_format:
      lifeevents.total_percentage:
        name: percent_0
        decimals: '0'
        format_string: "#,##0%"
        label: Percent (0)
        label_prefix: Percent
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
      'Audience Name ': personas.audience_name_date
    row: 28
    col: 0
    width: 12
    height: 7
  - title: Lifestyle
    name: Lifestyle
    model: amazon_v1
    explore: persona_insights
    type: looker_grid
    fields: [lifestyle.name, lifestyle.total_percentage, lifestyle.total_affinity]
    filters:
      lifestyle.total_percentage: ">=0.01"
    sorts: [lifestyle.total_affinity desc 0]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
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
      lifestyle.total_affinity: Overlap Index
    series_column_widths:
      inmarket.name: 320
      lifestyle.total_affinity: 150
      lifestyle.total_percentage: 110
      lifestyle.name: 390
    series_cell_visualizations:
      inmarket.total_percentage:
        is_active: false
      inmarket.total_affinity:
        is_active: true
      interests.total_affinity:
        is_active: true
      lifeevents.total_affinity:
        is_active: true
      lifestyle.total_affinity:
        is_active: true
        palette:
          palette_id: 4bd2619a-35b3-0228-2a92-42a9e0cac1ff
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffe6bf"
          - "#e89c35"
          - "#e87712"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_value_format:
      lifestyle.total_percentage:
        name: percent_0
        decimals: '0'
        format_string: "#,##0%"
        label: Percent (0)
        label_prefix: Percent
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
      'Audience Name ': personas.audience_name_date
    row: 21
    col: 12
    width: 12
    height: 7
  - title: Top Retail Categories
    name: Top Retail Categories
    model: amazon_v1
    explore: persona_insights
    type: looker_grid
    fields: [topretailcategories.path, topretailcategories.total_percentage, topretailcategories.total_affinity,
      topretailcategories.name]
    filters:
      topretailcategories.name: ''
      topretailcategories.total_percentage: ">=0.01"
    sorts: [topretailcategories.total_affinity desc]
    limit: 500
    show_view_names: false
    show_row_numbers: false
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
      topretailcategories.name: Product
      topretailcategories.total_affinity: Overlap Index
    series_column_widths:
      inmarket.name: 320
      topretailcategories.name: 180
      topretailcategories.total_affinity: 300
      topretailcategories.total_percentage: 120
    series_cell_visualizations:
      inmarket.total_percentage:
        is_active: false
      inmarket.total_affinity:
        is_active: true
      interests.total_affinity:
        is_active: true
      lifeevents.total_affinity:
        is_active: true
      lifestyle.total_affinity:
        is_active: true
      topretailcategories.total_affinity:
        is_active: true
        palette:
          palette_id: ebc3280f-5ac7-1dc4-ee43-68befdbf3c92
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffe6bf"
          - "#e89c35"
          - "#e87712"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_value_format:
      topretailcategories.total_percentage:
        name: percent_0
        decimals: '0'
        format_string: "#,##0%"
        label: Percent (0)
        label_prefix: Percent
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
      'Audience Name ': personas.audience_name_date
    row: 37
    col: 0
    width: 24
    height: 8
  - title: Age
    name: Age
    model: amazon_v1
    explore: persona_insights
    type: looker_column
    fields: [age.age_attribute, age.total_age_percentage, age.total_age_affinity]
    sorts: [age.age_attribute]
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
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Percentage, orientation: left, series: [{axisId: age.total_age_percentage,
            id: age.total_age_percentage, name: Percentage}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: Index, orientation: right, series: [{axisId: age.total_age_affinity,
            id: age.total_age_affinity, name: Index}], showLabels: true, showValues: true,
        maxValue: !!null '', minValue: 0, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: true
    label_value_format: ''
    series_types:
      age.total_age_affinity: line
    series_colors:
      age.total_age_affinity: "#80868B"
      age.total_age_percentage: "#ffcb7d"
    series_labels:
      age.total_age_percentage: Percentage
      age.total_age_affinity: Index
    reference_lines: []
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
      inmarket.name: 320
    series_cell_visualizations:
      inmarket.total_percentage:
        is_active: false
      inmarket.total_affinity:
        is_active: true
    defaults_version: 1
    listen:
      'Audience Name ': personas.audience_name_date
    row: 7
    col: 6
    width: 10
    height: 6
  - title: Gender
    name: Gender
    model: amazon_v1
    explore: persona_insights
    type: looker_column
    fields: [gender.gender_attribute, gender.total_gender_percentage, gender.total_gender_affinity]
    sorts: [gender.total_gender_affinity desc]
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
    point_style: circle_outline
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
        id: 2f8361c9-30e5-234e-fcbb-59c792b4c8bd
        label: Custom
        type: discrete
        colors:
        - "#1A73E8"
        - "#12B5CB"
        - "#E52592"
        - "#E8710A"
        - "#F9AB00"
        - "#7CB342"
        - "#9334E6"
        - "#6d6b75"
        - "#079c98"
        - "#A8A116"
        - "#EA4335"
        - "#FF8168"
      options:
        steps: 5
    y_axes: [{label: Percentage, orientation: left, series: [{axisId: gender.total_gender_percentage,
            id: gender.total_gender_percentage, name: Percentage}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {
        label: Index, orientation: right, series: [{axisId: gender.total_gender_affinity,
            id: gender.total_gender_affinity, name: Index}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: true
    series_types:
      age.total_age_affinity: line
      gender.total_gender_affinity: line
    series_colors:
      gender.total_gender_percentage: "#ffcb7d"
      gender.total_gender_affinity: "#6d6b75"
    series_labels:
      age.total_age_percentage: Percentage
      age.total_age_affinity: Index
      gender.total_gender_affinity: Index
      gender.total_gender_percentage: Percentage
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
      inmarket.name: 320
    series_cell_visualizations:
      inmarket.total_percentage:
        is_active: false
      inmarket.total_affinity:
        is_active: true
    defaults_version: 1
    listen:
      'Audience Name ': personas.audience_name_date
    row: 7
    col: 0
    width: 6
    height: 6
  - title: Relationship
    name: Relationship
    model: amazon_v1
    explore: persona_insights
    type: looker_column
    fields: [relationship.relationship_attribute, relationship.total_relationship_percentage,
      relationship.total_relationship_affinity]
    sorts: [relationship.total_relationship_affinity desc]
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
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Percentage, orientation: left, series: [{axisId: relationship.total_relationship_percentage,
            id: relationship.total_relationship_percentage, name: Total Relationship
              Percentage}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}, {label: Index, orientation: right, series: [
          {axisId: relationship.total_relationship_affinity, id: relationship.total_relationship_affinity,
            name: Index}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: true
    series_types:
      age.total_age_affinity: line
      propertyownership.total_property_ownership_affinity: line
      relationship.total_relationship_affinity: line
    series_colors:
      age.total_age_affinity: "#F9AB00"
      propertyownership.total_property_ownership_affinity: "#F9AB00"
      relationship.total_relationship_affinity: "#80868B"
      relationship.total_relationship_percentage: "#ffcb7d"
    series_labels:
      propertyownership.total_property_ownership_percentage: Percentage
      propertyownership.total_property_ownership_affinity: Index
      relationship.total_relationship_affinity: Index
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
      inmarket.name: 320
    series_cell_visualizations:
      inmarket.total_percentage:
        is_active: false
      inmarket.total_affinity:
        is_active: true
    defaults_version: 1
    listen:
      'Audience Name ': personas.audience_name_date
    row: 7
    col: 16
    width: 7
    height: 6
  - title: Audience Names
    name: Audience Names
    model: amazon_v1
    explore: persona_insights
    type: looker_grid
    fields: [audiences.audiencename]
    filters:
      audiences.audiencename: "-NULL"
    sorts: [audiences.audiencename]
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
    series_text_format:
      audiences.audiencename:
        bg_color: "#ffefe2"
    header_background_color: "#E8710A"
    series_types: {}
    defaults_version: 1
    title_hidden: true
    listen:
      'Audience Name ': personas.audience_name_date
    row: 1
    col: 0
    width: 5
    height: 4
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |+
      <img src="http://logo-logos.com/2016/12/Amazon_logo.png" width="200" height="70"/>


    row: 0
    col: 16
    width: 5
    height: 3
  - type: button
    name: button_587
    rich_content_json: '{"text":"Audience Definition & Size","description":"","newTab":false,"alignment":"center","size":"medium","style":"FILLED","color":"#E8710A"}'
    row: 0
    col: 0
    width: 8
    height: 1
  - type: button
    name: button_588
    rich_content_json: '{"text":"Top 30 Overlapping Segments","description":"","newTab":true,"alignment":"center","size":"large","style":"OUTLINED","color":"#E8710A"}'
    row: 19
    col: 0
    width: 24
    height: 2
  - type: button
    name: button_589
    rich_content_json: '{"text":"Audience Demographics","description":"","newTab":true,"alignment":"center","size":"large","style":"OUTLINED","color":"#E8710A"}'
    row: 5
    col: 4
    width: 15
    height: 2
  - type: button
    name: button_590
    rich_content_json: '{"text":"Top Retail Categories","description":"","newTab":true,"alignment":"center","size":"large","style":"OUTLINED","color":"#E8710A"}'
    row: 35
    col: 0
    width: 24
    height: 2
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h2","align":"left","children":[{"text":" ","color":"hsl(0,
      0%, 0%)"},{"text":"- ","bold":true,"color":"hsl(31, 92%, 50%)"},{"color":"hsl(0,
      0%, 0%)","text":"To c"},{"text":"reate a new persona, go to the "},{"type":"a","url":"https://initiativeinternal1.cloud.looker.com/dashboards/39?Audience+Name=Dress+Shirts&Category=/","children":[{"text":"Persona
      Creator"}],"id":1675105680053},{"text":""}],"id":1675105680053},{"type":"p","children":[{"text":""}],"id":1675366510330},{"type":"h2","align":"left","id":1675366509318,"children":[{"text":""}]},{"type":"h2","children":[{"text":"
      - ","color":"hsl(31, 92%, 50%)","bold":true},{"text":"Your new persona will
      be available for use in this dashboard after 30 minutes"}],"id":1675105680053}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 9
    width: 7
    height: 5
  filters:
  - name: 'Audience Name '
    title: 'Audience Name '
    type: field_filter
    default_value: '"Art Lovers, 2022-11-18T15:01:27.8 UTC"'
    allow_multiple_values: true
    required: true
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: persona_insights
    listens_to_filters: []
    field: personas.audience_name_date
