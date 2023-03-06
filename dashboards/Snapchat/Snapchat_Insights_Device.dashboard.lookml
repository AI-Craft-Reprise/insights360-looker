- dashboard: snapchat_insights_device
  title: Snapchat Insights Device
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: wPwbBs0WpGKIZXAHRAMBfs
  elements:
  - title: OS Type
    name: OS Type
    model: snapchat_insights
    explore: audience_insights_dimension_category_device
    type: looker_donut_multiples
    fields: [audience_insights_dimension_category_device.insight_name, audience_insights_dimension_category_device.target_audience_percent,
      audience_insights_dimension_category_device.reference_audience_percent, audience_insights_dimension_category_device.target_index_to_reference]
    filters:
      audience_insights_dimension_category_device.os_type: "-NULL"
      audience_insights_dimension_category_device.insight_name: "-Unknown"
    sorts: [audience_insights_dimension_category_device.target_index_to_reference
        desc]
    limit: 500
    show_value_labels: false
    font_size: 12
    series_colors:
      audience_insights_dimension_category_device.target_audience_percent: "#079c98"
      audience_insights_dimension_category_device.reference_audience_percent: "#FFFC00"
      audience_insights_dimension_category_device.target_index_to_reference: "#2e071c"
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
    series_cell_visualizations:
      audience_insights_dimension_category_device.target_audience_percent:
        is_active: true
      audience_insights_dimension_category_device.target_index_to_reference:
        is_active: true
      audience_insights_dimension_category_device.reference_audience_percent:
        is_active: true
    series_value_format:
      audience_insights_dimension_category_device.target_index_to_reference:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
      audience_insights_dimension_category_device.reference_audience_percent:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
      audience_insights_dimension_category_device.target_audience_percent:
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
    value_labels: legend
    label_type: labPer
    listen:
      Target Country Code: device_geos.country_code
      Base Country Code: device_country.country_code
      Target Gender: device_demo.gender
      Target Age Group: device_age_group.age_groups
      Target Interest: interest_names.interest_name
    row: 0
    col: 0
    width: 9
    height: 6
  - title: Model
    name: Model
    model: snapchat_insights
    explore: audience_insights_dimension_category_device
    type: looker_grid
    fields: [audience_insights_dimension_category_device.insight_name, audience_insights_dimension_category_device.target_audience_percent,
      audience_insights_dimension_category_device.reference_audience_percent, audience_insights_dimension_category_device.target_index_to_reference]
    filters:
      device_country.country_code: us
      device_age_group.age_groups: 21-24
      device_demo.gender: FEMALE
      audience_insights_dimension_category_device.marketing_name_only: "-NULL"
    sorts: [audience_insights_dimension_category_device.target_index_to_reference
        desc]
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
    series_cell_visualizations:
      audience_insights_dimension_category_device.target_audience_percent:
        is_active: true
        palette:
          palette_id: c9e1356b-ea23-525c-5e0b-7efb79d7b39b
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#c1e8dd"
          - "#69bab6"
          - "#08807b"
      audience_insights_dimension_category_device.target_index_to_reference:
        is_active: true
        palette:
          palette_id: 4dea8dd0-29a4-084b-7d50-823b01aa76a6
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#cfcfcf"
          - "#7d7f94"
          - "#000000"
      audience_insights_dimension_category_device.reference_audience_percent:
        is_active: true
        palette:
          palette_id: 68a2fd8a-e71d-00e5-ed93-10c4eab93dc0
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#f1f586"
          - "#fffc00"
          - "#a8a30e"
    series_value_format:
      audience_insights_dimension_category_device.target_index_to_reference:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
      audience_insights_dimension_category_device.reference_audience_percent:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
      audience_insights_dimension_category_device.target_audience_percent:
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
      Target Country Code: device_geos.country_code
      Target Interest: interest_names.interest_name
    row: 6
    col: 12
    width: 12
    height: 7
  - title: Brand
    name: Brand
    model: snapchat_insights
    explore: audience_insights_dimension_category_device
    type: looker_grid
    fields: [audience_insights_dimension_category_device.insight_name, audience_insights_dimension_category_device.target_audience_percent,
      audience_insights_dimension_category_device.reference_audience_percent, audience_insights_dimension_category_device.target_index_to_reference]
    filters:
      device_country.country_code: us
      device_age_group.age_groups: 21-24
      device_demo.gender: FEMALE
      audience_insights_dimension_category_device.make: "-NULL"
    sorts: [audience_insights_dimension_category_device.target_index_to_reference
        desc]
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
    series_cell_visualizations:
      audience_insights_dimension_category_device.target_audience_percent:
        is_active: true
        palette:
          palette_id: ae830f51-4e9f-f0a6-3981-3bb36e761632
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#c1e8dd"
          - "#69bab6"
          - "#08807b"
      audience_insights_dimension_category_device.target_index_to_reference:
        is_active: true
        palette:
          palette_id: 41a38f4d-2d1f-2606-c9aa-b14a095e4fdb
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#cfcfcf"
          - "#7d7f94"
          - "#000000"
      audience_insights_dimension_category_device.reference_audience_percent:
        is_active: true
        palette:
          palette_id: ecd5e109-cc4d-7043-e415-c41c9e3b851c
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#fffc00"
          - "#ebdb1c"
    series_value_format:
      audience_insights_dimension_category_device.target_index_to_reference:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
      audience_insights_dimension_category_device.reference_audience_percent:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
      audience_insights_dimension_category_device.target_audience_percent:
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
      Target Country Code: device_geos.country_code
      Target Interest: interest_names.interest_name
    row: 6
    col: 0
    width: 12
    height: 7
  - title: Connection Type
    name: Connection Type
    model: snapchat_insights
    explore: audience_insights_dimension_category_device
    type: looker_donut_multiples
    fields: [audience_insights_dimension_category_device.insight_name, audience_insights_dimension_category_device.target_audience_percent,
      audience_insights_dimension_category_device.reference_audience_percent, audience_insights_dimension_category_device.target_index_to_reference]
    filters:
      device_country.country_code: us
      device_age_group.age_groups: 21-24
      device_demo.gender: FEMALE
      audience_insights_dimension_category_device.connection_type: "-NULL"
    sorts: [audience_insights_dimension_category_device.target_index_to_reference
        desc]
    limit: 500
    show_value_labels: false
    font_size: 12
    color_application: undefined
    series_colors:
      audience_insights_dimension_category_device.target_audience_percent: "#079c98"
      audience_insights_dimension_category_device.reference_audience_percent: "#FFFC00"
      audience_insights_dimension_category_device.target_index_to_reference: "#14030c"
    series_labels: {}
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
    series_cell_visualizations:
      audience_insights_dimension_category_device.target_audience_percent:
        is_active: true
      audience_insights_dimension_category_device.target_index_to_reference:
        is_active: true
      audience_insights_dimension_category_device.reference_audience_percent:
        is_active: true
    series_value_format:
      audience_insights_dimension_category_device.target_index_to_reference:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
      audience_insights_dimension_category_device.reference_audience_percent:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
      audience_insights_dimension_category_device.target_audience_percent:
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
    hidden_fields: []
    hidden_points_if_no: []
    map: usa
    map_projection: ''
    up_color: false
    down_color: false
    total_color: false
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    listen:
      Target Country Code: device_geos.country_code
      Target Interest: interest_names.interest_name
    row: 0
    col: 9
    width: 9
    height: 6
  - title: Device Carrier ID
    name: Device Carrier ID
    model: snapchat_insights
    explore: audience_insights_dimension_category_device
    type: looker_grid
    fields: [audience_insights_dimension_category_device.insight_name, audience_insights_dimension_category_device.target_audience_percent,
      audience_insights_dimension_category_device.reference_audience_percent, audience_insights_dimension_category_device.target_index_to_reference]
    filters:
      device_country.country_code: us
      device_age_group.age_groups: 21-24
      device_demo.gender: FEMALE
      audience_insights_dimension_category_device.carrier_id: "-NULL"
    sorts: [audience_insights_dimension_category_device.target_index_to_reference
        desc]
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
    series_cell_visualizations:
      audience_insights_dimension_category_device.target_audience_percent:
        is_active: true
        palette:
          palette_id: 71ff3158-e124-831d-baa9-a254f740f359
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#c1e8dd"
          - "#69bab6"
          - "#08807b"
      audience_insights_dimension_category_device.target_index_to_reference:
        is_active: true
        palette:
          palette_id: 18f9b68c-6138-3482-29fc-cea0737e1277
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#cfcfcf"
          - "#7d7f94"
          - "#000000"
      audience_insights_dimension_category_device.reference_audience_percent:
        is_active: true
        palette:
          palette_id: 2b255741-8115-dd24-7ad0-99a1281e81a7
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#f1f586"
          - "#fffc00"
          - "#a8a30e"
    series_value_format:
      audience_insights_dimension_category_device.target_index_to_reference:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
      audience_insights_dimension_category_device.reference_audience_percent:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
      audience_insights_dimension_category_device.target_audience_percent:
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
      Target Country Code: device_geos.country_code
      Target Interest: interest_names.interest_name
    row: 13
    col: 6
    width: 13
    height: 8
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <a href="https://cdnlogo.com/logo/snapchat_32503.html"><img src="https://cdn.cdnlogo.com/logos/s/89/snapchat.svg"></a>
    row: 0
    col: 19
    width: 5
    height: 6
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
    explore: audience_insights_dimension_category_device
    listens_to_filters: []
    field: device_country.country_code
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
    explore: audience_insights_dimension_category_device
    listens_to_filters: [Base Country Code]
    field: device_geos.country_code
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
    explore: audience_insights_dimension_category_device
    listens_to_filters: []
    field: device_age_group.age_groups
  - name: Target Gender
    title: Target Gender
    type: field_filter
    default_value: FEMALE
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: snapchat_insights
    explore: audience_insights_dimension_category_device
    listens_to_filters: []
    field: device_demo.gender
  - name: Target Interest
    title: Target Interest
    type: field_filter
    default_value: Adventure Seekers
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: snapchat_insights
    explore: audience_insights_dimension_category_device
    listens_to_filters: []
    field: interest_names.interest_name
