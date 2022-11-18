- dashboard: snapchat_insights
  title: Snapchat Insights
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: sN9hWRWpqok21V7Sxqdlec
  elements:
  - title: Max Size Reference Audience
    name: Max Size Reference Audience
    model: v1_insights
    explore: snap
    type: single_value
    fields: [snap.reference_audience_size_max]
    filters: {}
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
    custom_color: "#1c89a3"
    single_value_title: Base Max
    value_format: 0.0,, "M"
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
      Country Code: base_spec_geos.country_code
    row: 3
    col: 3
    width: 3
    height: 2
  - title: Min Size Reference Audience
    name: Min Size Reference Audience
    model: v1_insights
    explore: snap
    type: single_value
    fields: [snap.reference_audience_size_min]
    filters:
      base_spec_geos.country_code: us
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
    custom_color: "#1c89a3"
    single_value_title: Base Min
    value_format: 0.0,, "M"
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
    listen: {}
    row: 3
    col: 0
    width: 3
    height: 2
  - title: Min Size Target Audience
    name: Min Size Target Audience
    model: v1_insights
    explore: snap
    type: single_value
    fields: [snap.target_audience_size_min]
    filters:
      base_spec_geos.country_code: us
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
    custom_color: "#ffae00"
    single_value_title: Target Min
    value_format: 0.0,, "M"
    defaults_version: 1
    listen:
      'Country Code Target ': targeting_spec_geos.country_code
      Interest Category ID: targeting_spec_interests_category_ids.interest_category_id
      Age Groups: targeting_spec_age_groups_unnest.age_groups
      Targeting Spec Gender: targeting_spec_gender.targeting_spec_gender
    row: 1
    col: 0
    width: 3
    height: 2
  - title: Max Size Target Audience
    name: Max Size Target Audience
    model: v1_insights
    explore: snap
    type: single_value
    fields: [snap.target_audience_size_max]
    filters:
      base_spec_geos.country_code: us
    sorts: [snap.target_audience_size_max desc 0]
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
    custom_color: "#ffae00"
    single_value_title: Target Max
    value_format: 0.0,, "M"
    defaults_version: 1
    listen:
      'Country Code Target ': targeting_spec_geos.country_code
      Interest Category ID: targeting_spec_interests_category_ids.interest_category_id
      Age Groups: targeting_spec_age_groups_unnest.age_groups
      Targeting Spec Gender: targeting_spec_gender.targeting_spec_gender
    row: 1
    col: 3
    width: 3
    height: 2
  - title: Advanced Demographics
    name: Advanced Demographics
    model: v1_insights
    explore: snap
    type: looker_bar
    fields: [advanced_demographics.name, advanced_demographics.index_target_to_reference_advanced_demographics,
      advanced_demographics.target_audience_advanced_demo_percent, advanced_demographics.reference_audience_advanced_demographics]
    filters:
      base_spec_geos.country_code: us
      targeting_spec_geos.country_code: us
      targeting_spec_interests_category_ids.interest_category_id: '"SLC_1"'
    sorts: [advanced_demographics.name]
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
    series_types:
      advanced_demographics.index_target_to_reference_advanced_demographics: line
    series_colors:
      advanced_demographics.reference_audience_advanced_demographics: "#1c89a3"
      advanced_demographics.target_audience_advanced_demo_percent: "#ffae00"
      advanced_demographics.index_target_to_reference_advanced_demographics: "#1b2326"
    defaults_version: 1
    listen:
      Advanced Demographics: advanced_demographics.name
      Age Groups: targeting_spec_age_groups_unnest.age_groups
      Targeting Spec Gender: targeting_spec_gender.targeting_spec_gender
    row: 11
    col: 0
    width: 13
    height: 31
  - title: New Tile
    name: New Tile
    model: v1_insights
    explore: snap
    type: single_value
    fields: [snap.target_incidence]
    filters:
      base_spec_geos.country_code: us
      targeting_spec_geos.country_code: us
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
    custom_color: "#18a2da"
    single_value_title: Target Incidence
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
      Interest Category ID: targeting_spec_interests_category_ids.interest_category_id
      Age Groups: targeting_spec_age_groups_unnest.age_groups
      Targeting Spec Gender: targeting_spec_gender.targeting_spec_gender
    row: 1
    col: 6
    width: 3
    height: 4
  - name: Addressable Audience size
    type: text
    title_text: Addressable Audience size
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 9
    height: 1
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 9
    width: 15
    height: 1
  - name: " Audience Interest"
    type: text
    title_text: " Audience Interest"
    subtitle_text: ''
    body_text: ''
    row: 42
    col: 0
    width: 24
    height: 1
  - title: Age Distribution
    name: Age Distribution
    model: v1_insights
    explore: snap
    type: looker_column
    fields: [age_groups.name, age_groups.index_target_to_reference_age_groups, age_groups.target_audience_age_group_percent,
      age_groups.reference_audience_age_group_percent]
    filters:
      base_spec_geos.country_code: us
      targeting_spec_geos.country_code: us
      targeting_spec_interests_category_ids.interest_category_id: '"SLC_1"'
    sorts: [age_groups.name]
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
    series_types:
      age_groups.index_target_to_reference_age_groups: line
    series_colors:
      age_groups.target_audience_age_group_percent: "#ffae00"
      age_groups.reference_audience_age_group_percent: "#1c89a3"
      age_groups.index_target_to_reference_age_groups: "#5ec7eb"
    defaults_version: 1
    listen:
      Advanced Demographics: advanced_demographics.name
      Age Groups: targeting_spec_age_groups_unnest.age_groups
      Targeting Spec Gender: targeting_spec_gender.targeting_spec_gender
    row: 5
    col: 0
    width: 9
    height: 6
  - title: Target Audience Language Distribution
    name: Target Audience Language Distribution
    model: v1_insights
    explore: snap
    type: looker_column
    fields: [languages.name, languages.index_target_to_reference, languages.target_audience_language_percent,
      languages.reference_audience_language_percent]
    filters:
      base_spec_geos.country_code: us
      targeting_spec_geos.country_code: us
      targeting_spec_interests_category_ids.interest_category_id: '"SLC_1"'
    sorts: [languages.target_audience_language_percent desc 0]
    limit: 5
    column_limit: 50
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
    series_types:
      languages.index_target_to_reference: line
    series_colors:
      age_groups.reference_audience_age_group_percent: "#1c89a3"
      languages.target_audience_language_percent: "#ffae00"
      languages.index_target_to_reference: "#5ec7eb"
      languages.reference_audience_language_percent: "#1c89a3"
    defaults_version: 1
    listen:
      Age Groups: targeting_spec_age_groups_unnest.age_groups
      Targeting Spec Gender: targeting_spec_gender.targeting_spec_gender
    row: 5
    col: 9
    width: 9
    height: 6
  - title: Snap Base Gender Distribution
    name: Snap Base Gender Distribution
    model: v1_insights
    explore: snap
    type: looker_pie
    fields: [gender.name, gender.reference_audience]
    filters:
      base_spec_geos.country_code: us
    sorts: [gender.reference_audience desc 0]
    limit: 500
    column_limit: 50
    value_labels: labels
    label_type: labPer
    inner_radius: 65
    series_colors:
      age_groups.reference_audience_age_group_percent: "#1c89a3"
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
    y_axes: [{label: '', orientation: left, series: [{axisId: age_groups.reference_audience_age_group_percent,
            id: age_groups.reference_audience_age_group_percent, name: Reference Audience
              Age Group Percent}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 1
    col: 9
    width: 7
    height: 4
  filters:
  - name: Country Code
    title: Country Code
    type: field_filter
    default_value: us
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: v1_insights
    explore: snap
    listens_to_filters: []
    field: base_spec_geos.country_code
  - name: 'Country Code Target '
    title: 'Country Code Target '
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: v1_insights
    explore: snap
    listens_to_filters: [Country Code]
    field: targeting_spec_geos.country_code
  - name: Age Groups
    title: Age Groups
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: v1_insights
    explore: snap
    listens_to_filters: []
    field: targeting_spec_age_groups_unnest.age_groups
  - name: Interest Category ID
    title: Interest Category ID
    type: field_filter
    default_value: '"SLC_1"'
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: v1_insights
    explore: snap
    listens_to_filters: []
    field: targeting_spec_interests_category_ids.interest_category_id
  - name: Targeting Spec Gender
    title: Targeting Spec Gender
    type: field_filter
    default_value: FEMALE
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: v1_insights
    explore: snap
    listens_to_filters: []
    field: targeting_spec_gender.targeting_spec_gender
  - name: Advanced Demographics
    title: Advanced Demographics
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: v1_insights
    explore: snap
    listens_to_filters: []
    field: advanced_demographics.name
