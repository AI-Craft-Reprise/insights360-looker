- dashboard: snapchat_audience_insights
  title: Snapchat Audience Insights
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: KvnQ4wuxZz3o8sc742w1Kj
  elements:
  - title: Reference Audience Age Groups Distribution
    name: Reference Audience Age Groups Distribution
    model: insights
    explore: snap
    type: looker_column
    fields: [age_groups.name, age_groups.reference_audience_age_group_percent]
    filters:
      targeting_spec_geos.country_code: us
      age_groups.name: "-unknown"
    sorts: [age_groups.name]
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: age_groups.reference_audience_age_group_percent,
            id: age_groups.reference_audience_age_group_percent, name: Reference Audience
              Age Group Percent}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_colors:
      age_groups.reference_audience_age_group_percent: "#1c89a3"
    defaults_version: 1
    listen:
      Base Country Code: base_spec_geos.country_code
    row: 1
    col: 17
    width: 7
    height: 4
  - title: Ref Audience Size Max
    name: Ref Audience Size Max
    model: insights
    explore: snap
    type: single_value
    fields: [snap.reference_audience_size_maximum, snap.reference_audience_size_max]
    filters:
      targeting_spec_geos.country_code: us
    sorts: [snap.reference_audience_size_maximum]
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
    custom_color: "#1c89a3"
    single_value_title: base max
    value_format: 0.0,, "M"
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
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
      Base Country Code: base_spec_geos.country_code
    row: 4
    col: 3
    width: 3
    height: 2
  - title: Ref Audience Size Min
    name: Ref Audience Size Min
    model: insights
    explore: snap
    type: single_value
    fields: [snap.reference_audience_size_min, snap.reference_audience_size_minimum]
    filters:
      targeting_spec_geos.country_code: us
    sorts: [snap.reference_audience_size_min desc]
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
    custom_color: "#1c89a3"
    single_value_title: base min
    value_format: 0.0,, "M"
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
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
      Base Country Code: base_spec_geos.country_code
    row: 4
    col: 0
    width: 3
    height: 2
  - title: Target Audience Size Max
    name: Target Audience Size Max
    model: insights
    explore: snap
    type: single_value
    fields: [snap.target_audience_size_max]
    filters:
      base_spec_geos.country_code: us
      gender.name: male
      age_groups.name: "-unknown"
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
    single_value_title: target max
    value_format: 0.0,, "M"
    defaults_version: 1
    listen:
      Interest Category ID: targeting_spec_interests_category_ids.interest_category_id
      Targeting Spec Gender: targeting_spec_gender.targeting_spec_gender
      Target Age Groups: targeting_spec_age_groups_unnest.age_groups
    row: 2
    col: 3
    width: 3
    height: 2
  - title: Target Audience Size Min
    name: Target Audience Size Min
    model: insights
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
    single_value_title: target min
    value_format: 0.0,, "M"
    defaults_version: 1
    listen:
      Interest Category ID: targeting_spec_interests_category_ids.interest_category_id
      Targeting Spec Gender: targeting_spec_gender.targeting_spec_gender
      Target Age Groups: targeting_spec_age_groups_unnest.age_groups
    row: 2
    col: 0
    width: 3
    height: 2
  - title: Reference Audience Gender
    name: Reference Audience Gender
    model: insights
    explore: snap
    type: looker_pie
    fields: [gender.name, gender.reference_audience]
    filters: {}
    sorts: [gender.name]
    limit: 500
    value_labels: labels
    label_type: labVal
    inner_radius: 70
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    series_colors:
      female: "#9334E6"
      male: "#cea0e6"
    series_labels:
      female: Female
      male: Male
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
      Base Country Code: base_spec_geos.country_code
    row: 6
    col: 6
    width: 5
    height: 4
  - title: Reference Audience Languages
    name: Reference Audience Languages
    model: insights
    explore: snap
    type: looker_bar
    fields: [languages.name, languages.reference_audience_language_percent]
    filters: {}
    sorts: [languages.reference_audience_language_percent desc]
    limit: 2
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: languages.reference_audience_language_percent,
            id: languages.reference_audience_language_percent, name: Reference Audience
              Language Percent}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      languages.reference_audience_language_percent: "#9334E6"
    defaults_version: 1
    listen:
      Base Country Code: base_spec_geos.country_code
    row: 1
    col: 11
    width: 6
    height: 4
  - name: Summary
    type: text
    title_text: Summary
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 1
  - name: Audience Interest
    type: text
    title_text: Audience Interest
    subtitle_text: ''
    body_text: ''
    row: 10
    col: 0
    width: 24
    height: 1
  - title: Index Target vs Reference Language
    name: Index Target vs Reference Language
    model: insights
    explore: snap
    type: looker_bar
    fields: [languages.name, languages.index_target_to_reference]
    filters:
      base_spec_geos.country_code: us
      targeting_spec_geos.country_code: us
      targeting_spec_interests_category_ids.interest_category_id: '"SLC_1"'
      targeting_spec_gender.targeting_spec_gender: MALE
    sorts: [languages.index_target_to_reference desc]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: languages.index_target_to_reference,
            id: languages.index_target_to_reference, name: Index Target to Reference}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 11
    col: 0
    width: 8
    height: 5
  - title: Index Target vs Reference Age Groups
    name: Index Target vs Reference Age Groups
    model: insights
    explore: snap
    type: looker_bar
    fields: [age_groups.name, age_groups.index_target_to_reference_age_groups]
    filters:
      base_spec_geos.country_code: us
      targeting_spec_geos.country_code: us
      targeting_spec_interests_category_ids.interest_category_id: '"SLC_1"'
      targeting_spec_gender.targeting_spec_gender: MALE
    sorts: [age_groups.name desc]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: age_groups.index_target_to_reference_age_groups,
            id: age_groups.index_target_to_reference_age_groups, name: Index Target
              to Reference Age Groups}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 11
    col: 9
    width: 8
    height: 5
  - title: Target Incidence
    name: Target Incidence
    model: insights
    explore: snap
    type: single_value
    fields: [snap.target_incidence]
    filters:
      base_spec_geos.country_code: us
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
    custom_color: "#18a2da"
    single_value_title: target incidence
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
    row: 2
    col: 6
    width: 5
    height: 4
  - name: Addressable Audience size
    type: text
    title_text: Addressable Audience size
    subtitle_text: ''
    body_text: ''
    row: 1
    col: 0
    width: 11
    height: 1
  filters:
  - name: Base Country Code
    title: Base Country Code
    type: field_filter
    default_value: us
    allow_multiple_values: true
    required: true
    ui_config:
      type: advanced
      display: popover
    model: insights
    explore: snap
    listens_to_filters: []
    field: base_spec_geos.country_code
  - name: Target Country Code
    title: Target Country Code
    type: field_filter
    default_value: us
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: insights
    explore: snap
    listens_to_filters: []
    field: targeting_spec_geos.country_code
  - name: Target Age Groups
    title: Target Age Groups
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: insights
    explore: snap
    listens_to_filters: []
    field: targeting_spec_age_groups_unnest.age_groups
  - name: Targeting Spec Gender
    title: Targeting Spec Gender
    type: field_filter
    default_value: MALE
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: insights
    explore: snap
    listens_to_filters: []
    field: targeting_spec_gender.targeting_spec_gender
  - name: Interest Category ID
    title: Interest Category ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: insights
    explore: snap
    listens_to_filters: []
    field: targeting_spec_interests_category_ids.interest_category_id
