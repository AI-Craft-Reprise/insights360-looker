- dashboard: snapchat_insights_demo
  title: Snapchat Insights Demo
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Hqnl0Tw9jYkHWKrRgsV58x
  elements:
  - title: 'Age '
    name: 'Age '
    model: snapchat_insights
    explore: audience_insights_dimension_category_demo
    type: looker_column
    fields: [audience_insights_dimension_category_demo.insight_name, audience_insights_dimension_category_demo.target_audience_percent,
      audience_insights_dimension_category_demo.reference_audience_percent]
    filters:
      audience_insights_dimension_category_demo.distribution_name: '"age_groups"'
      audience_insights_dimension_category_demo.insight_name: "-unknown"
    sorts: [audience_insights_dimension_category_demo.insight_name]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: sum_of_insight_target_index_to_reference, based_on: audience_insights_dimension_category_demo.insight_target_index_to_reference,
        expression: '', label: Sum of Insight Target Index to Reference, type: sum,
        _kind_hint: measure, _type_hint: number}]
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
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: "#,##0.0"
    series_colors:
      audience_insights_dimension_category_demo.target_audience_percent: "#FFFC00"
      audience_insights_dimension_category_demo.reference_audience_percent: "#565859"
    label_color: ["#c"]
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Base Country Code: country.country_code
      Target Country Code: geos.country_code
      Target Interest Name: interest_names.interest_name
      Target Age Group: age_group.age_groups
      Target Gender: demo.gender
      Target Interest Category: interest_names.interest_category
    row: 4
    col: 0
    width: 8
    height: 5
  - title: 'Language '
    name: 'Language '
    model: snapchat_insights
    explore: audience_insights_dimension_category_demo
    type: looker_bar
    fields: [audience_insights_dimension_category_demo.insight_name, audience_insights_dimension_category_demo.target_audience_percent,
      audience_insights_dimension_category_demo.reference_audience_percent]
    filters:
      audience_insights_dimension_category_demo.distribution_name: languages
      audience_insights_dimension_category_demo.target_audience_percent: ">0.5"
    sorts: [audience_insights_dimension_category_demo.target_audience_percent desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: sum_of_insight_target_index_to_reference, based_on: audience_insights_dimension_category_demo.insight_target_index_to_reference,
        expression: '', label: Sum of Insight Target Index to Reference, type: sum,
        _kind_hint: measure, _type_hint: number}]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: false
    font_size: 12
    label_value_format: "#,##0.0"
    series_types: {}
    series_colors:
      audience_insights_dimension_category_demo.target_audience_percent: "#FFFC00"
      audience_insights_dimension_category_demo.reference_audience_percent: "#565859"
    x_axis_datetime_label: ''
    hidden_pivots: {}
    defaults_version: 1
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen:
      Base Country Code: country.country_code
      Target Country Code: geos.country_code
      Target Interest Name: interest_names.interest_name
      Target Age Group: age_group.age_groups
      Target Gender: demo.gender
      Target Interest Category: interest_names.interest_category
    row: 4
    col: 17
    width: 7
    height: 5
  - title: Income
    name: Income
    model: snapchat_insights
    explore: audience_insights_dimension_category_demo
    type: looker_column
    fields: [audience_insights_dimension_category_demo.target_index_to_reference,
      audience_insights_dimension_category_demo.income]
    filters:
      audience_insights_dimension_category_demo.distribution_name: '"advanced_demographics"'
      audience_insights_dimension_category_demo.income: "-NULL"
    sorts: [audience_insights_dimension_category_demo.income]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: sum_of_insight_target_index_to_reference, based_on: audience_insights_dimension_category_demo.insight_target_index_to_reference,
        expression: '', label: Sum of Insight Target Index to Reference, type: sum,
        _kind_hint: measure, _type_hint: number}]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: audience_insights_dimension_category_demo.target_index_to_reference,
            id: audience_insights_dimension_category_demo.target_index_to_reference,
            name: Target Index to Reference}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    font_size: '12'
    label_value_format: "#,##0.0"
    series_types: {}
    series_colors:
      audience_insights_dimension_category_demo.target_index_to_reference: "#fffc00"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    note_state: collapsed
    note_display: above
    note_text: Target Index to Reference
    listen:
      Base Country Code: country.country_code
      Target Country Code: geos.country_code
      Target Interest Name: interest_names.interest_name
      Target Age Group: age_group.age_groups
      Target Gender: demo.gender
      Target Interest Category: interest_names.interest_category
    row: 11
    col: 0
    width: 8
    height: 11
  - title: Education
    name: Education
    model: snapchat_insights
    explore: audience_insights_dimension_category_demo
    type: looker_bar
    fields: [audience_insights_dimension_category_demo.target_index_to_reference,
      audience_insights_dimension_category_demo.education]
    filters:
      audience_insights_dimension_category_demo.distribution_name: '"advanced_demographics"'
      audience_insights_dimension_category_demo.education: "-NULL"
    sorts: [audience_insights_dimension_category_demo.target_index_to_reference desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: sum_of_insight_target_index_to_reference, based_on: audience_insights_dimension_category_demo.insight_target_index_to_reference,
        expression: '', label: Sum of Insight Target Index to Reference, type: sum,
        _kind_hint: measure, _type_hint: number}]
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
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: audience_insights_dimension_category_demo.target_index_to_reference,
            id: audience_insights_dimension_category_demo.target_index_to_reference,
            name: Target Index to Reference}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    label_value_format: "#,##0.0"
    series_types: {}
    series_colors:
      audience_insights_dimension_category_demo.target_index_to_reference: "#FFFC00"
    series_labels:
      Some College: Some College
    label_color: ["#030303"]
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
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
    note_state: collapsed
    note_display: above
    note_text: Target Index to Reference
    listen:
      Base Country Code: country.country_code
      Target Country Code: geos.country_code
      Target Interest Name: interest_names.interest_name
      Target Age Group: age_group.age_groups
      Target Gender: demo.gender
      Target Interest Category: interest_names.interest_category
    row: 11
    col: 8
    width: 8
    height: 11
  - title: Marital Status
    name: Marital Status
    model: snapchat_insights
    explore: audience_insights_dimension_category_demo
    type: looker_pie
    fields: [audience_insights_dimension_category_demo.target_index_to_reference,
      audience_insights_dimension_category_demo.marital_status]
    filters:
      audience_insights_dimension_category_demo.distribution_name: '"advanced_demographics"'
      audience_insights_dimension_category_demo.marital_status: "-NULL"
    sorts: [audience_insights_dimension_category_demo.target_index_to_reference desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: sum_of_insight_target_index_to_reference, based_on: audience_insights_dimension_category_demo.insight_target_index_to_reference,
        expression: '', label: Sum of Insight Target Index to Reference, type: sum,
        _kind_hint: measure, _type_hint: number}]
    value_labels: legend
    label_type: labPer
    series_colors:
      Married: "#FFFC00"
      Single: "#042326"
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
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: "#,##0.0"
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
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
      Base Country Code: country.country_code
      Target Country Code: geos.country_code
      Target Interest Name: interest_names.interest_name
      Target Age Group: age_group.age_groups
      Target Gender: demo.gender
      Target Interest Category: interest_names.interest_category
    row: 22
    col: 0
    width: 8
    height: 5
  - title: Occupation
    name: Occupation
    model: snapchat_insights
    explore: audience_insights_dimension_category_demo
    type: looker_bar
    fields: [audience_insights_dimension_category_demo.target_index_to_reference,
      audience_insights_dimension_category_demo.occupation]
    filters:
      audience_insights_dimension_category_demo.distribution_name: '"advanced_demographics"'
      audience_insights_dimension_category_demo.occupation: "-NULL"
    sorts: [audience_insights_dimension_category_demo.target_index_to_reference desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: sum_of_insight_target_index_to_reference, based_on: audience_insights_dimension_category_demo.insight_target_index_to_reference,
        expression: '', label: Sum of Insight Target Index to Reference, type: sum,
        _kind_hint: measure, _type_hint: number}]
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
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_zoom: true
    y_axis_zoom: false
    label_value_format: "#,##0.0"
    series_types: {}
    series_colors:
      audience_insights_dimension_category_demo.target_index_to_reference: "#FFFC00"
    label_color: ["#"]
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
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
    note_state: collapsed
    note_display: above
    note_text: Target Index to Reference
    listen:
      Base Country Code: country.country_code
      Target Country Code: geos.country_code
      Target Interest Name: interest_names.interest_name
      Target Age Group: age_group.age_groups
      Target Gender: demo.gender
      Target Interest Category: interest_names.interest_category
    row: 11
    col: 16
    width: 8
    height: 11
  - title: Children's Age
    name: Children's Age
    model: snapchat_insights
    explore: audience_insights_dimension_category_demo
    type: looker_pie
    fields: [audience_insights_dimension_category_demo.target_index_to_reference,
      audience_insights_dimension_category_demo.presence_of_child]
    filters:
      audience_insights_dimension_category_demo.distribution_name: '"advanced_demographics"'
      audience_insights_dimension_category_demo.presence_of_child: "-NULL"
    sorts: [audience_insights_dimension_category_demo.presence_of_child]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: sum_of_insight_target_index_to_reference, based_on: audience_insights_dimension_category_demo.insight_target_index_to_reference,
        expression: '', label: Sum of Insight Target Index to Reference, type: sum,
        _kind_hint: measure, _type_hint: number}]
    value_labels: legend
    label_type: labPer
    series_colors:
      'Age: 0-3': "#FFFC00"
      'Age: 4-6': "#052e36"
      'Age: 10-12': "#869688"
      'Age: 13-15': "#1f47fa"
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
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: "#,##0.0"
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
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
      Base Country Code: country.country_code
      Target Country Code: geos.country_code
      Target Interest Name: interest_names.interest_name
      Target Age Group: age_group.age_groups
      Target Gender: demo.gender
      Target Interest Category: interest_names.interest_category
    row: 22
    col: 8
    width: 8
    height: 5
  - title: Home Status
    name: Home Status
    model: snapchat_insights
    explore: audience_insights_dimension_category_demo
    type: looker_pie
    fields: [audience_insights_dimension_category_demo.target_index_to_reference,
      audience_insights_dimension_category_demo.home_status]
    filters:
      audience_insights_dimension_category_demo.distribution_name: '"advanced_demographics"'
      audience_insights_dimension_category_demo.home_status: "-NULL"
    sorts: [audience_insights_dimension_category_demo.target_index_to_reference desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: sum_of_insight_target_index_to_reference, based_on: audience_insights_dimension_category_demo.insight_target_index_to_reference,
        expression: '', label: Sum of Insight Target Index to Reference, type: sum,
        _kind_hint: measure, _type_hint: number}]
    value_labels: legend
    label_type: labPer
    series_colors:
      Homeowner: "#FFFC00"
      Renter: "#021417"
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
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: "#,##0.0"
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
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
      Base Country Code: country.country_code
      Target Country Code: geos.country_code
      Target Interest Name: interest_names.interest_name
      Target Age Group: age_group.age_groups
      Target Gender: demo.gender
      Target Interest Category: interest_names.interest_category
    row: 22
    col: 16
    width: 8
    height: 5
  - title: Life Events
    name: Life Events
    model: snapchat_insights
    explore: audience_insights_dimension_category_demo
    type: looker_column
    fields: [audience_insights_dimension_category_demo.target_index_to_reference,
      audience_insights_dimension_category_demo.life_events]
    filters:
      audience_insights_dimension_category_demo.distribution_name: '"advanced_demographics"'
      audience_insights_dimension_category_demo.life_events: "-NULL"
    sorts: [audience_insights_dimension_category_demo.target_index_to_reference desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: sum_of_insight_target_index_to_reference, based_on: audience_insights_dimension_category_demo.insight_target_index_to_reference,
        expression: '', label: Sum of Insight Target Index to Reference, type: sum,
        _kind_hint: measure, _type_hint: number}]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: audience_insights_dimension_category_demo.target_index_to_reference,
            id: audience_insights_dimension_category_demo.target_index_to_reference,
            name: Target Index to Reference}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: "#,##0.0"
    series_types: {}
    series_colors:
      audience_insights_dimension_category_demo.target_index_to_reference: "#fff027"
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    trend_lines: []
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
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
      Base Country Code: country.country_code
      Target Country Code: geos.country_code
      Target Interest Name: interest_names.interest_name
      Target Age Group: age_group.age_groups
      Target Gender: demo.gender
      Target Interest Category: interest_names.interest_category
    row: 27
    col: 0
    width: 24
    height: 8
  - title: Min Size Target
    name: Min Size Target
    model: snapchat_insights
    explore: audience_insights_dimension_category_demo
    type: single_value
    fields: [audience_insights_dimension_category_demo.targeting_audience_size_minimum]
    sorts: [audience_insights_dimension_category_demo.targeting_audience_size_minimum]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#E52592"
    single_value_title: Target Min Size
    value_format: 0.0,, "M"
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#0f0f0f",
        font_color: "#FFFC00", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: equal to, value: !!null '',
        background_color: "#1A73E8", font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    show_view_names: false
    defaults_version: 1
    series_types: {}
    listen:
      Base Country Code: country.country_code
      Target Country Code: geos.country_code
      Target Interest Name: interest_names.interest_name
      Target Age Group: age_group.age_groups
      Target Gender: demo.gender
      Target Interest Category: interest_names.interest_category
    row: 2
    col: 0
    width: 4
    height: 2
  - title: Target Max Size
    name: Target Max Size
    model: snapchat_insights
    explore: audience_insights_dimension_category_demo
    type: single_value
    fields: [audience_insights_dimension_category_demo.targeting_audience_size_maximum]
    sorts: [audience_insights_dimension_category_demo.targeting_audience_size_maximum]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#E52592"
    single_value_title: Target Max Size
    value_format: 0.0,, "M"
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#0f0f0f",
        font_color: "#FFFC00", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    show_view_names: false
    defaults_version: 1
    series_types: {}
    listen:
      Base Country Code: country.country_code
      Target Country Code: geos.country_code
      Target Interest Name: interest_names.interest_name
      Target Age Group: age_group.age_groups
      Target Gender: demo.gender
      Target Interest Category: interest_names.interest_category
    row: 2
    col: 4
    width: 4
    height: 2
  - title: Reference Min size
    name: Reference Min size
    model: snapchat_insights
    explore: audience_insights_dimension_category_demo
    type: single_value
    fields: [audience_insights_dimension_category_demo.reference_audience_size_minimum]
    sorts: [audience_insights_dimension_category_demo.reference_audience_size_minimum]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#079c98"
    single_value_title: Reference Min Size
    value_format: 0.0,, "M"
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#FFFC00",
        font_color: "#3e4142", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    show_view_names: false
    defaults_version: 1
    series_types: {}
    listen:
      Base Country Code: country.country_code
      Target Country Code: geos.country_code
      Target Interest Name: interest_names.interest_name
      Target Age Group: age_group.age_groups
      Target Gender: demo.gender
      Target Interest Category: interest_names.interest_category
    row: 2
    col: 8
    width: 4
    height: 2
  - title: Reference Max Size
    name: Reference Max Size
    model: snapchat_insights
    explore: audience_insights_dimension_category_demo
    type: single_value
    fields: [audience_insights_dimension_category_demo.reference_audience_size_maximum]
    sorts: [audience_insights_dimension_category_demo.reference_audience_size_maximum]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#079c98"
    single_value_title: Reference Max Size
    value_format: 0.0,, "M"
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#FFFC00",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    show_view_names: false
    defaults_version: 1
    series_types: {}
    listen:
      Base Country Code: country.country_code
      Target Country Code: geos.country_code
      Target Interest Name: interest_names.interest_name
      Target Age Group: age_group.age_groups
      Target Gender: demo.gender
      Target Interest Category: interest_names.interest_category
    row: 2
    col: 12
    width: 4
    height: 2
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <a href="https://cdnlogo.com/logo/snapchat_32503.html"><img src="https://cdn.cdnlogo.com/logos/s/89/snapchat.svg"></a>
    row: 0
    col: 17
    width: 4
    height: 4
  - type: button
    name: button_607
    rich_content_json: '{"text":"Audience Details","description":"","newTab":true,"alignment":"center","size":"large","style":"OUTLINED","color":"#020812"}'
    row: 0
    col: 2
    width: 14
    height: 2
  - type: button
    name: button_609
    rich_content_json: '{"text":"Advanced Demographic Indexes","description":"Target
      Index to Reference","newTab":true,"alignment":"center","size":"large","style":"OUTLINED","color":"#031125"}'
    row: 9
    col: 0
    width: 18
    height: 2
  - title: Target Gender
    name: Target Gender
    model: snapchat_insights
    explore: audience_insights_dimension_category_demo
    type: looker_pie
    fields: [audience_insights_dimension_category_demo.insight_name, audience_insights_dimension_category_demo.target_audience_percent]
    filters:
      audience_insights_dimension_category_demo.distribution_name: gender
      audience_insights_dimension_category_demo.insight_name: "-%unknown%"
    sorts: [audience_insights_dimension_category_demo.insight_name]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: sum_of_insight_target_index_to_reference, based_on: audience_insights_dimension_category_demo.insight_target_index_to_reference,
        expression: '', label: Sum of Insight Target Index to Reference, type: sum,
        _kind_hint: measure, _type_hint: number}]
    value_labels: labels
    label_type: labPer
    inner_radius: 0
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: false
    series_colors:
      audience_insights_dimension_category_demo.target_audience_percent: "#FFFC00"
      audience_insights_dimension_category_demo.reference_audience_percent: "#565859"
      female: "#FFFC00"
      male: "#565859"
    series_labels: {}
    show_value_labels: true
    font_size: 12
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    label_value_format: "#,##0.0"
    series_types: {}
    point_style: circle
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    show_null_points: true
    interpolation: linear
    listen:
      Base Country Code: country.country_code
      Target Country Code: geos.country_code
      Target Interest Name: interest_names.interest_name
      Target Age Group: age_group.age_groups
      Target Gender: demo.gender
      Target Interest Category: interest_names.interest_category
    row: 4
    col: 8
    width: 4
    height: 5
  - title: Reference Gender
    name: Reference Gender
    model: snapchat_insights
    explore: audience_insights_dimension_category_demo
    type: looker_pie
    fields: [audience_insights_dimension_category_demo.insight_name, audience_insights_dimension_category_demo.reference_audience_percent]
    filters:
      audience_insights_dimension_category_demo.distribution_name: gender
      audience_insights_dimension_category_demo.insight_name: "-%unknown%"
    sorts: [audience_insights_dimension_category_demo.insight_name]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: sum_of_insight_target_index_to_reference, based_on: audience_insights_dimension_category_demo.insight_target_index_to_reference,
        expression: '', label: Sum of Insight Target Index to Reference, type: sum,
        _kind_hint: measure, _type_hint: number}]
    value_labels: labels
    label_type: labPer
    series_colors:
      audience_insights_dimension_category_demo.target_audience_percent: "#FFFC00"
      audience_insights_dimension_category_demo.reference_audience_percent: "#565859"
      male: "#565859"
      female: "#FFFC00"
    series_labels: {}
    show_value_labels: true
    font_size: 12
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    label_value_format: "#,##0.0"
    series_types: {}
    point_style: circle
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    show_null_points: true
    interpolation: linear
    listen:
      Base Country Code: country.country_code
      Target Country Code: geos.country_code
      Target Interest Name: interest_names.interest_name
      Target Age Group: age_group.age_groups
      Target Gender: demo.gender
      Target Interest Category: interest_names.interest_category
    row: 4
    col: 12
    width: 5
    height: 5
  filters:
  - name: Base Country Code
    title: Base Country Code
    type: field_filter
    default_value: us
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: snapchat_insights
    explore: audience_insights_dimension_category_demo
    listens_to_filters: []
    field: country.country_code
  - name: Target Country Code
    title: Target Country Code
    type: field_filter
    default_value: us
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: snapchat_insights
    explore: audience_insights_dimension_category_demo
    listens_to_filters: [Base Country Code]
    field: geos.country_code
  - name: Target Age Group
    title: Target Age Group
    type: field_filter
    default_value: 21-24
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: snapchat_insights
    explore: audience_insights_dimension_category_demo
    listens_to_filters: []
    field: age_group.age_groups
  - name: Target Gender
    title: Target Gender
    type: field_filter
    default_value: MALE
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: snapchat_insights
    explore: audience_insights_dimension_category_demo
    listens_to_filters: []
    field: demo.gender
  - name: Target Interest Category
    title: Target Interest Category
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: snapchat_insights
    explore: audience_insights_dimension_category_demo
    listens_to_filters: []
    field: interest_names.interest_category
  - name: Target Interest Name
    title: Target Interest Name
    type: field_filter
    default_value: Adventure Seekers
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: snapchat_insights
    explore: audience_insights_dimension_category_demo
    listens_to_filters: [Target Interest Category]
    field: interest_names.interest_name
