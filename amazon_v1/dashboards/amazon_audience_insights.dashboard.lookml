- dashboard: amazon_audience_insights
  title: Amazon Audience Insights
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: sRAZGozyeZNxQ2XXCLK9Se
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
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: min est size
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
      Audience Name: personas.name
    row: 0
    col: 0
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
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: max est size
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
      Audience Name: personas.name
    row: 0
    col: 3
    width: 3
    height: 2
  - title: In Market
    name: In Market
    model: amazon_v1
    explore: persona_insights
    type: looker_grid
    fields: [inmarket.name, inmarket.total_percentage, inmarket.total_affinity]
    filters:
      inmarket.total_percentage: ">0.01"
    sorts: [inmarket.total_affinity desc]
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
    series_column_widths:
      inmarket.name: 320
    series_cell_visualizations:
      inmarket.total_percentage:
        is_active: false
      inmarket.total_affinity:
        is_active: true
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
      Audience Name: personas.name
    row: 12
    col: 0
    width: 12
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 2
    col: 0
    width: 7
    height: 1
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 0
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
    y_axes: [{label: '', orientation: left, series: [{axisId: income.total_income_percentage,
            id: income.total_income_percentage, name: Percentage}], showLabels: false,
        showValues: true, maxValue: 1, unpinAxis: false, tickDensity: default, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: income.total_income_affinity,
            id: income.total_income_affinity, name: Index}], showLabels: false, showValues: true,
        maxValue: 1.8, unpinAxis: true, tickDensity: default, type: linear}]
    series_types:
      age.total_age_affinity: line
      income.total_income_affinity: line
    series_colors:
      age.total_age_affinity: "#F9AB00"
      income.total_income_affinity: "#F9AB00"
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
      Audience Name: personas.name
    row: 4
    col: 14
    width: 9
    height: 7
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
    y_axes: [{label: '', orientation: left, series: [{axisId: propertyownership.total_property_ownership_percentage,
            id: propertyownership.total_property_ownership_percentage, name: Percentage}],
        showLabels: false, showValues: true, maxValue: 1, unpinAxis: false, tickDensity: default,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: propertyownership.total_property_ownership_affinity,
            id: propertyownership.total_property_ownership_affinity, name: Index}],
        showLabels: false, showValues: true, maxValue: 1.8, unpinAxis: true, tickDensity: default,
        type: linear}]
    series_types:
      age.total_age_affinity: line
      propertyownership.total_property_ownership_affinity: line
    series_colors:
      age.total_age_affinity: "#F9AB00"
      propertyownership.total_property_ownership_affinity: "#F9AB00"
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
      Audience Name: personas.name
    row: 4
    col: 8
    width: 6
    height: 7
  - title: Interests
    name: Interests
    model: amazon_v1
    explore: persona_insights
    type: looker_grid
    fields: [interests.name, interests.total_percentage, interests.total_affinity]
    sorts: [interests.total_affinity desc 0]
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
      interests.total_percentage: Interest total
    series_column_widths:
      inmarket.name: 320
    series_cell_visualizations:
      inmarket.total_percentage:
        is_active: false
      inmarket.total_affinity:
        is_active: true
      interests.total_affinity:
        is_active: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_value_format:
      interests.total_percentage:
        name: percent_2
        decimals: '2'
        format_string: "#,##0.00%"
        label: Percent (2)
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
      Audience Name: personas.name
    row: 12
    col: 12
    width: 12
    height: 7
  - title: Life Events
    name: Life Events
    model: amazon_v1
    explore: persona_insights
    type: looker_grid
    fields: [lifeevents.name, lifeevents.total_percentage, lifeevents.total_affinity]
    sorts: [lifeevents.total_affinity desc 0]
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
      Audience Name: personas.name
    row: 19
    col: 0
    width: 12
    height: 7
  - title: Lifestyle
    name: Lifestyle
    model: amazon_v1
    explore: persona_insights
    type: looker_grid
    fields: [lifestyle.name, lifestyle.total_percentage, lifestyle.total_affinity]
    sorts: [lifestyle.total_affinity desc 0]
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
      lifestyle.total_affinity:
        is_active: true
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
      Audience Name: personas.name
    row: 19
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
    sorts: [topretailcategories.path desc]
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
      topretailcategories.name: Product
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
      Audience Name: personas.name
    row: 27
    col: 0
    width: 24
    height: 8
  - name: Audience Demographics Insights - % and Index
    type: text
    title_text: Audience Demographics Insights - % and Index
    subtitle_text: ''
    body_text: ''
    row: 3
    col: 0
    width: 24
    height: 1
  - name: Top Overlapping Audiences
    type: text
    title_text: Top Overlapping Audiences
    subtitle_text: ''
    body_text: ''
    row: 11
    col: 0
    width: 24
    height: 1
  - name: Top Retail Categories (2)
    type: text
    title_text: Top Retail Categories
    subtitle_text: ''
    body_text: ''
    row: 26
    col: 0
    width: 24
    height: 1
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
    y_axes: [{label: '', orientation: left, series: [{axisId: age.total_age_percentage,
            id: age.total_age_percentage, name: Percentage}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: age.total_age_affinity,
            id: age.total_age_affinity, name: Index}], showLabels: false, showValues: true,
        maxValue: !!null '', unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types:
      age.total_age_affinity: line
    series_colors:
      age.total_age_affinity: "#F9AB00"
    series_labels:
      age.total_age_percentage: Percentage
      age.total_age_affinity: Index
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
      Audience Name: personas.name
    row: 4
    col: 1
    width: 7
    height: 7
  - title: Gender
    name: Gender
    model: amazon_v1
    explore: persona_insights
    type: looker_column
    fields: [gender.gender_attribute, gender.total_gender_affinity]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: age.total_age_percentage,
            id: age.total_age_percentage, name: Total Age Percentage}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: age.total_age_affinity,
            id: age.total_age_affinity, name: Total Age Affinity}], showLabels: false,
        showValues: true, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types:
      age.total_age_affinity: line
    series_colors:
      age.total_age_affinity: "#F9AB00"
    series_labels:
      age.total_age_percentage: Percentage
      age.total_age_affinity: Index
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
      Audience Name: personas.name
    row: 35
    col: 0
    width: 8
    height: 6
  - title: New Tile
    name: New Tile
    model: amazon_v1
    explore: personas
    type: single_value
    fields: [persona_gender.gender]
    sorts: [persona_gender.gender]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Gender
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
      Audience Name: personas.name
    row: 0
    col: 6
    width: 4
    height: 2
  - title: New Tile
    name: New Tile (2)
    model: amazon_v1
    explore: personas
    type: looker_grid
    fields: [persona_age.age]
    sorts: [persona_age.age]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '20'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      persona_age.age: Age
    series_column_widths:
      persona_age.age: 120
    series_text_format:
      persona_age.age:
        align: center
    header_font_color: "#80868B"
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
      Audience Name: personas.name
    row: 0
    col: 10
    width: 3
    height: 3
  filters:
  - name: Audience Name
    title: Audience Name
    type: field_filter
    default_value: twitch-persona-gender-male
    allow_multiple_values: true
    required: true
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: persona_insights
    listens_to_filters: []
    field: personas.name
