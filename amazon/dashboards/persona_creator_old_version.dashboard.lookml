- dashboard: amazon_persona_creator
  title: Amazon Persona Creator
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: l17hPftiJTc1TTojr7hiMD
  elements:
  - title: Amazon Persona Creator
    name: Amazon Persona Creator
    model: amazon_v1
    explore: audience_cross
    type: table
    fields: [audience_agg.audience_definition]
    filters: {}
    sorts: [audience_agg.audience_definition]
    limit: 500
    listen:
      Age Group: audience_cross.age_group
      Gender: audience_cross.gender
      Audienceid: audience_cross.audienceid
    row: 0
    col: 0
    width: 7
    height: 7
  - title: Gender
    name: Gender
    model: amazon_v1
    explore: audience_cross
    type: looker_grid
    fields: [audience_cross.gender]
    filters: {}
    sorts: [audience_cross.gender]
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
    listen:
      Gender: audience_cross.gender
    row: 7
    col: 2
    width: 2
    height: 7
  - title: Audience ID
    name: Audience ID
    model: amazon_v1
    explore: audience_cross
    type: looker_grid
    fields: [audience_cross.audienceid]
    filters: {}
    sorts: [audience_cross.audienceid]
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
    listen:
      Audienceid: audience_cross.audienceid
    row: 7
    col: 4
    width: 3
    height: 7
  - title: Age Group
    name: Age Group
    model: amazon_v1
    explore: audience_cross
    type: looker_grid
    fields: [audience_cross.age_group]
    filters: {}
    sorts: [audience_cross.age_group]
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
    listen:
      Age Group: audience_cross.age_group
    row: 7
    col: 0
    width: 2
    height: 7
  filters:
  - name: Age Group
    title: Age Group
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: audience_cross
    listens_to_filters: []
    field: audience_cross.age_group
  - name: Gender
    title: Gender
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: audience_cross
    listens_to_filters: []
    field: audience_cross.gender
  - name: Audienceid
    title: Audienceid
    type: field_filter
    default_value: '360289521116286281'
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: audience_cross
    listens_to_filters: []
    field: audience_cross.audienceid
