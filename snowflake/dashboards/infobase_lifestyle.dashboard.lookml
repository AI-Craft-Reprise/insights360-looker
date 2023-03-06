- dashboard: infobase_lifestyle
  title: Infobase Lifestyle
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 5p5g5zQwB6yzUH8mCXkKuR
  elements:
  - title: Charity Causes Contribute
    name: Charity Causes Contribute
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.charity_causes_contribute]
    filters:
      snowflake_infobase.charity_causes_contribute: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 11
    col: 0
    width: 24
    height: 10
  - name: <font size= "6"><b>CPG</b> </font size>
    type: text
    title_text: <font size= "6"><b>CPG</b> </font size>
    subtitle_text: ''
    body_text: ''
    row: 21
    col: 0
    width: 24
    height: 1
  - name: '<font size="6"> <b>Charity</b> </font>  '
    type: text
    title_text: '<font size="6"> <b>Charity</b> </font>  '
    subtitle_text: ''
    body_text: ''
    row: 10
    col: 0
    width: 24
    height: 1
  - title: CPG Pet Owner / Pet Type
    name: CPG Pet Owner / Pet Type
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.cpg_pet]
    filters:
      snowflake_infobase.cpg_pet: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 30
    col: 4
    width: 16
    height: 7
  - title: CPG Health Diet
    name: CPG Health Diet
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.cpg_health_diet]
    filters:
      snowflake_infobase.cpg_health_diet: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 22
    col: 0
    width: 24
    height: 8
  - name: <font size= "6"><b>Demo</b> </font size>
    type: text
    title_text: <font size= "6"><b>Demo</b> </font size>
    subtitle_text: ''
    body_text: ''
    row: 37
    col: 0
    width: 24
    height: 1
  - title: Behavior Affluent
    name: Behavior Affluent
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_bar
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.demo_behavior_affluent]
    filters:
      snowflake_infobase.demo_behavior_affluent: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    series_types: {}
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 38
    col: 13
    width: 11
    height: 14
  - title: Behavior
    name: Behavior
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_bar
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.demo_behavior]
    filters:
      snowflake_infobase.demo_behavior: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    series_types: {}
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 38
    col: 0
    width: 13
    height: 14
  - title: Homeowner
    name: Homeowner
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.demo_home_owner]
    filters:
      snowflake_infobase.demo_home_owner: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 52
    col: 13
    width: 11
    height: 5
  - title: Life Event
    name: Life Event
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.life_event]
    filters:
      snowflake_infobase.life_event: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 57
    col: 13
    width: 11
    height: 8
  - title: Occupation
    name: Occupation
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_bar
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.demo_occupation_lifestyle]
    filters:
      snowflake_infobase.demo_occupation_lifestyle: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    series_types: {}
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 52
    col: 0
    width: 13
    height: 24
  - name: <font size= "6"><b>Finance</b> </font size>
    type: text
    title_text: <font size= "6"><b>Finance</b> </font size>
    subtitle_text: ''
    body_text: ''
    row: 76
    col: 0
    width: 24
    height: 1
  - title: Finance Affluence
    name: Finance Affluence
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.finance_affluence]
    filters:
      snowflake_infobase.finance_affluence: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 77
    col: 13
    width: 11
    height: 11
  - title: Prefer Language
    name: Prefer Language
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.demo_prefer_language_lifestyle]
    filters:
      snowflake_infobase.demo_prefer_language_lifestyle: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 65
    col: 13
    width: 11
    height: 11
  - title: Finance
    name: Finance
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_bar
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.finance]
    filters:
      snowflake_infobase.finance: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    series_types: {}
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 77
    col: 0
    width: 13
    height: 11
  - name: <font size= "6"><b>Home</b> </font size>
    type: text
    title_text: <font size= "6"><b>Home</b> </font size>
    subtitle_text: ''
    body_text: ''
    row: 88
    col: 0
    width: 24
    height: 1
  - title: Home Energy Segment
    name: Home Energy Segment
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_bar
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.home_energy_segment]
    filters:
      snowflake_infobase.home_energy_segment: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    series_types: {}
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 89
    col: 0
    width: 24
    height: 13
  - name: '<font size= "6"><b>Interest</b> </font size> '
    type: text
    title_text: '<font size= "6"><b>Interest</b> </font size> '
    subtitle_text: ''
    body_text: ''
    row: 110
    col: 0
    width: 24
    height: 1
  - name: <font size= "6"><b>Insurance</b> </font size>
    type: text
    title_text: <font size= "6"><b>Insurance</b> </font size>
    subtitle_text: ''
    body_text: ''
    row: 102
    col: 0
    width: 24
    height: 1
  - title: Insurance Dynamics
    name: Insurance Dynamics
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.insurance_dynamics]
    filters:
      snowflake_infobase.insurance_dynamics: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 103
    col: 0
    width: 24
    height: 7
  - title: Interest
    name: Interest
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_grid
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.interest]
    filters:
      snowflake_infobase.interest: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
      snowflake_infobase.target_percentage:
        is_active: true
        palette:
          palette_id: b24b00e7-01a1-b875-820c-2e633de6f37c
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffffff"
          - "#ffae00"
      snowflake_infobase.genpop_percentage:
        is_active: true
        palette:
          palette_id: 436e7732-e3a3-acd7-b62d-cc2d7f525e55
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffffff"
          - "#1c89a3"
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    series_types: {}
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 118
    col: 0
    width: 24
    height: 10
  - title: Attitude Brand Interact
    name: Attitude Brand Interact
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.attitude_brand_interact]
    filters:
      snowflake_infobase.attitude_brand_interact: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 111
    col: 0
    width: 24
    height: 7
  - name: <font size= "6"><b>Invest</b> </font size>
    type: text
    title_text: <font size= "6"><b>Invest</b> </font size>
    subtitle_text: ''
    body_text: ''
    row: 128
    col: 0
    width: 24
    height: 1
  - name: <font size= "6"><b>Lifestyle</b> </font size>
    type: text
    title_text: <font size= "6"><b>Lifestyle</b> </font size>
    subtitle_text: ''
    body_text: ''
    row: 140
    col: 0
    width: 24
    height: 1
  - title: Invest Segment
    name: Invest Segment
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_bar
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.invest_segment]
    filters:
      snowflake_infobase.invest_segment: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    series_types: {}
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 129
    col: 0
    width: 24
    height: 11
  - title: Entertainment
    name: Entertainment
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.lifestyle_ent]
    filters:
      snowflake_infobase.lifestyle_ent: "-NULL"
    sorts: [snowflake_infobase.lifestyle_ent]
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 141
    col: 0
    width: 24
    height: 6
  - title: Green Lifestyle
    name: Green Lifestyle
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.lifestyle_green]
    filters:
      snowflake_infobase.lifestyle_green: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 147
    col: 0
    width: 8
    height: 6
  - title: Personicx Insurance
    name: Personicx Insurance
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_bar
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.lifestyle_personicx_insurance]
    filters:
      snowflake_infobase.lifestyle_personicx_insurance: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    series_types: {}
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 163
    col: 0
    width: 24
    height: 11
  - title: Personicx Finance
    name: Personicx Finance
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_grid
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.lifestyle_personicx_fin]
    filters:
      snowflake_infobase.lifestyle_personicx_fin: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
      snowflake_infobase.target_percentage:
        is_active: true
        palette:
          palette_id: b24b00e7-01a1-b875-820c-2e633de6f37c
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffffff"
          - "#ffae00"
      snowflake_infobase.genpop_percentage:
        is_active: true
        palette:
          palette_id: 436e7732-e3a3-acd7-b62d-cc2d7f525e55
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffffff"
          - "#1c89a3"
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    series_types: {}
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 153
    col: 0
    width: 24
    height: 10
  - title: In Market
    name: In Market
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.lifestyle_in_market]
    filters:
      snowflake_infobase.lifestyle_in_market: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 147
    col: 8
    width: 16
    height: 6
  - title: Personicx Lifestage
    name: Personicx Lifestage
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_grid
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.lifestyle_personicx_lifestage]
    filters:
      snowflake_infobase.lifestyle_personicx_lifestage: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
      snowflake_infobase.target_percentage:
        is_active: true
        palette:
          palette_id: b24b00e7-01a1-b875-820c-2e633de6f37c
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffffff"
          - "#ffae00"
      snowflake_infobase.genpop_percentage:
        is_active: true
        palette:
          palette_id: 436e7732-e3a3-acd7-b62d-cc2d7f525e55
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffffff"
          - "#1c89a3"
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    series_types: {}
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 174
    col: 0
    width: 24
    height: 10
  - title: Personicx Prime
    name: Personicx Prime
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_grid
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.lifestyle_personicx_lifestage, snowflake_infobase.lifestyle_personicx_prime]
    filters:
      snowflake_infobase.lifestyle_personicx_prime: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
      snowflake_infobase.target_percentage:
        is_active: true
        palette:
          palette_id: b24b00e7-01a1-b875-820c-2e633de6f37c
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffffff"
          - "#ffae00"
      snowflake_infobase.genpop_percentage:
        is_active: true
        palette:
          palette_id: 436e7732-e3a3-acd7-b62d-cc2d7f525e55
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffffff"
          - "#1c89a3"
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    series_types: {}
    hidden_fields: [snowflake_infobase.lifestyle_personicx_lifestage]
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 184
    col: 0
    width: 24
    height: 10
  - name: <font size= "6"><b>Retail</b> </font size>
    type: text
    title_text: <font size= "6"><b>Retail</b> </font size>
    subtitle_text: ''
    body_text: ''
    row: 204
    col: 0
    width: 24
    height: 1
  - name: <font size= "6"><b>Tech</b> </font size>
    type: text
    title_text: <font size= "6"><b>Tech</b> </font size>
    subtitle_text: ''
    body_text: ''
    row: 214
    col: 0
    width: 24
    height: 1
  - title: Segment
    name: Segment
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.retail_segment]
    filters:
      snowflake_infobase.retail_segment: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 205
    col: 12
    width: 12
    height: 9
  - title: Personicx Prime Place
    name: Personicx Prime Place
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_grid
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.lifestyle_personicx_prime_place]
    filters:
      snowflake_infobase.lifestyle_personicx_prime_place: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
      snowflake_infobase.target_percentage:
        is_active: true
        palette:
          palette_id: b24b00e7-01a1-b875-820c-2e633de6f37c
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffffff"
          - "#ffae00"
      snowflake_infobase.genpop_percentage:
        is_active: true
        palette:
          palette_id: 436e7732-e3a3-acd7-b62d-cc2d7f525e55
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffffff"
          - "#1c89a3"
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 194
    col: 0
    width: 24
    height: 10
  - title: Attitude Behavior
    name: Attitude Behavior
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.retail_attitude_behavior]
    filters:
      snowflake_infobase.retail_attitude_behavior: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 205
    col: 0
    width: 12
    height: 9
  - title: Social Media
    name: Social Media
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_bar
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.tech_social_media]
    filters:
      snowflake_infobase.tech_social_media: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    series_types: {}
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 215
    col: 0
    width: 12
    height: 11
  - title: Technographic Segment
    name: Technographic Segment
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_bar
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.tech_technographic_sement]
    filters:
      snowflake_infobase.tech_technographic_sement: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    series_types: {}
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 215
    col: 12
    width: 12
    height: 11
  - name: <font size= "6"><b>Travel</b> </font size>
    type: text
    title_text: <font size= "6"><b>Travel</b> </font size>
    subtitle_text: ''
    body_text: ''
    row: 226
    col: 0
    width: 24
    height: 1
  - title: Attitude Behavior
    name: Attitude Behavior (2)
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_column
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.travel_attitude_behavior]
    filters:
      snowflake_infobase.travel_attitude_behavior: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 227
    col: 14
    width: 10
    height: 8
  - title: Travel Activity
    name: Travel Activity
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_grid
    fields: [snowflake_infobase.target_percentage, snowflake_infobase.genpop_percentage,
      snowflake_infobase.travel_activity]
    filters:
      snowflake_infobase.travel_activity: "-NULL"
    sorts: [snowflake_infobase.target_percentage desc]
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
      snowflake_infobase.target_percentage:
        is_active: true
        palette:
          palette_id: b24b00e7-01a1-b875-820c-2e633de6f37c
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffffff"
          - "#ffae00"
      snowflake_infobase.genpop_percentage:
        is_active: true
        palette:
          palette_id: 436e7732-e3a3-acd7-b62d-cc2d7f525e55
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffffff"
          - "#1c89a3"
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    series_colors:
      snowflake_infobase.target_percentage: "#ffae00"
      snowflake_infobase.genpop_percentage: "#1c89a3"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
    row: 227
    col: 0
    width: 14
    height: 8
  - title: Infobase Complete List
    name: Infobase Complete List
    model: snowflake_insights_v1
    explore: snowflake_infobase
    type: looker_grid
    fields: [snowflake_infobase.category, snowflake_infobase.statement, snowflake_infobase.target_percentage,
      snowflake_infobase.index]
    filters: {}
    sorts: [snowflake_infobase.statement]
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
      snowflake_infobase.target_percentage:
        is_active: true
      snowflake_infobase.index:
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
    title_hidden: true
    listen:
      Audience Name: snowflake_infobase.audience_name
      Agency: snowflake_infobase.agency
      Client: snowflake_infobase.client
      Category: snowflake_infobase.category
      Date Created: snowflake_infobase.created
      Infobase Version: snowflake_infobase.infobase_version
      Target Percentage: snowflake_infobase.target_percentage
      Index: snowflake_infobase.index
    row: 0
    col: 0
    width: 24
    height: 10
  filters:
  - name: Agency
    title: Agency
    type: field_filter
    default_value: INI
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: snowflake_insights_v1
    explore: snowflake_infobase
    listens_to_filters: []
    field: snowflake_infobase.agency
  - name: Client
    title: Client
    type: field_filter
    default_value: CCL
    allow_multiple_values: false
    required: true
    ui_config:
      type: advanced
      display: popover
    model: snowflake_insights_v1
    explore: snowflake_infobase
    listens_to_filters: [Agency]
    field: snowflake_infobase.client
  - name: Audience Name
    title: Audience Name
    type: field_filter
    default_value: Brand.Competitors
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: snowflake_insights_v1
    explore: snowflake_infobase
    listens_to_filters: [Agency, Client]
    field: snowflake_infobase.audience_name
  - name: Date Created
    title: Date Created
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: snowflake_insights_v1
    explore: snowflake_infobase
    listens_to_filters: [Agency, Client]
    field: snowflake_infobase.created
  - name: Infobase Version
    title: Infobase Version
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: snowflake_insights_v1
    explore: snowflake_infobase
    listens_to_filters: [Agency, Client]
    field: snowflake_infobase.infobase_version
  - name: Category
    title: Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: snowflake_insights_v1
    explore: snowflake_infobase
    listens_to_filters: []
    field: snowflake_infobase.category
  - name: Target Percentage
    title: Target Percentage
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: snowflake_insights_v1
    explore: snowflake_infobase
    listens_to_filters: []
    field: snowflake_infobase.target_percentage
  - name: Index
    title: Index
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: snowflake_insights_v1
    explore: snowflake_infobase
    listens_to_filters: []
    field: snowflake_infobase.index
