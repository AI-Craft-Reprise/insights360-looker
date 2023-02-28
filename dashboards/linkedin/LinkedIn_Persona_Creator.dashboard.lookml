- dashboard: linkedin_persona_creator
  title: LinkedIn Persona Creator
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: yNxUmBnwnAsc4UkQYRzdwW
  elements:
  - title: ''
    name: ''
    model: linkedin_v1
    explore: audience_filter
    type: looker_grid
    fields: [audience_filter.company_size, audience_filter.industry, audience_filter.job_function,
      audience_filter.job_seniority]
    sorts: [audience_filter.company_size]
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
      audience_filter.company_size: 140
      audience_filter.job_function: 140
      audience_filter.job_seniority: 140
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
      Company Size: audience_filter.company_size
      Industry: audience_filter.industry
      Job Seniority: audience_filter.job_seniority
      Job Function: audience_filter.job_function
    row: 8
    col: 0
    width: 11
    height: 7
  - title: Step 2 - Persona Creator
    name: Step 2 - Persona Creator
    model: linkedin_v1
    explore: audience_filter
    type: looker_grid
    fields: [audience_definition.audience_definition]
    sorts: [audience_definition.audience_definition]
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
      audience_definition.audience_definition: Persona Creator
    defaults_version: 1
    title_hidden: true
    listen:
      Industry: audience_filter.industry
      Job Seniority: audience_filter.job_seniority
      Job Function: audience_filter.job_function
      Company Size: audience_filter.company_size
    row: 8
    col: 11
    width: 9
    height: 7
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"p","children":[{"text":"","color":"hsl(218, 67%, 43%)"}],"id":1674777431189},{"type":"p","id":1674673685826,"children":[{"bold":true,"text":"Step
      1 -","color":"hsl(209, 81%, 34%)"},{"bold":true,"text":" "},{"text":"Use the
      Filters above to select Company Size, Industry, Job Function and Seniority.
      Your selection will be reflected under Audience Definition table"}]},{"type":"p","children":[{"text":"Step
      2- ","bold":true,"color":"hsl(209, 81%, 34%)"},{"text":"In Persona Creator,
      click the link under “Audience Definition” and click again in “Create LinkedIn
      Persona\". There, you will be able to name your Persona and choose the country/countries.
      In this "},{"type":"a","url":"https://docs.google.com/spreadsheets/d/1Nm5am6SfykxOHLfMKWi7zWJvM2_wf1uOwc10R3kTC_o/edit#gid=0","children":[{"text":"link"}],"id":1674680501020},{"text":",
      you can find the country codes (tip: open the link in a new tab or it will get
      you out of here!)"}],"id":1674673747539},{"type":"p","id":1674680530244,"children":[{"text":"Step
      3 -","bold":true,"color":"hsl(218, 67%, 43%)"},{"bold":true,"text":" "},{"text":"Wait
      30 minutes and your Persona Insights will be available in "},{"type":"a","url":"https://initiativeinternal1.cloud.looker.com/dashboards/35?Audience+Name+and+Date+Created+=%22UK%2C+MX%2C+JP%2C+GER%2C+2023-01-17T15%3A41%3A12%2B00%3A00+UTC%22","children":[{"text":"LinkedIn
      Audience Insights"}],"id":1674687060541},{"text":"","fontSize":"14px","backgroundColor":"rgb(255,
      255, 255)","color":"rgb(38, 45, 51)"}]}]'
    rich_content_json: '{"format":"slate"}'
    row: 1
    col: 0
    width: 18
    height: 5
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |2-

      <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/LinkedIn_logo_initials.png/900px-LinkedIn_logo_initials.png?20140125013055" width="150" height="150">
    row: 0
    col: 18
    width: 6
    height: 6
  - type: button
    name: button_595
    rich_content_json: '{"text":"Step 2 - Persona Creator","description":"","newTab":false,"alignment":"center","size":"large","style":"OUTLINED","color":"#4276BE"}'
    row: 6
    col: 11
    width: 9
    height: 2
  - type: button
    name: button_596
    rich_content_json: '{"text":"How to create a Persona?","description":"","newTab":false,"alignment":"center","size":"large","style":"FILLED","color":"#4276BE"}'
    row: 0
    col: 1
    width: 17
    height: 1
  - type: button
    name: button_597
    rich_content_json: '{"text":"Step 1 - Audience Definition","description":"","newTab":false,"alignment":"center","size":"large","style":"OUTLINED","color":"#4276BE"}'
    row: 6
    col: 0
    width: 11
    height: 2
  filters:
  - name: Company Size
    title: Company Size
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: linkedin_v1
    explore: audience_filter
    listens_to_filters: []
    field: audience_filter.company_size
  - name: Industry
    title: Industry
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: linkedin_v1
    explore: audience_filter
    listens_to_filters: []
    field: audience_filter.industry
  - name: Job Function
    title: Job Function
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: linkedin_v1
    explore: audience_filter
    listens_to_filters: []
    field: audience_filter.job_function
  - name: Job Seniority
    title: Job Seniority
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: linkedin_v1
    explore: audience_filter
    listens_to_filters: []
    field: audience_filter.job_seniority
