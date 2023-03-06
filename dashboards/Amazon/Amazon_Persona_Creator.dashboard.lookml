- dashboard: amazon_persona_creator
  title: Amazon Persona Creator
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  filters_location_top: false
  preferred_slug: IQLvQfhW93vghrY1r13riI
  elements:
  - title: Step 2 - Persona Creator
    name: Step 2 - Persona Creator
    model: amazon_v1
    explore: audiences
    type: table
    fields: [audience_definition.audience_definition]
    filters: {}
    sorts: [audience_definition.audience_definition]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    series_labels:
      audience_definition.audience_definition: Audience Definition
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    title_hidden: true
    listen:
      Audience Name: audiences.audiencename
      Level 9: audiences.audience_category_level_9
      Level 8: audiences.audience_category_level_8
      Level 7: audiences.audience_category_level_7
      Level 6: audiences.audience_category_level_6
      Level 5: audiences.audience_category_level_5
      Level 4: audiences.audience_category_level_4
      Level 3: audiences.audience_category_level_3
      Level 2: audiences.audience_category_level_2
      'Category: Level 1': audiences.audience_category_level_1
    row: 8
    col: 13
    width: 11
    height: 5
  - title: Step 1 - Audience Name
    name: Step 1 - Audience Name
    model: amazon_v1
    explore: audiences
    type: looker_grid
    fields: [audiences.audiencename]
    sorts: [audiences.audiencename]
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
    series_text_format:
      audiences.audiencename: {}
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    header_font_color: "#f8fcff"
    header_background_color: "#E8710A"
    defaults_version: 1
    title_hidden: true
    listen:
      Audience Name: audiences.audiencename
      Level 9: audiences.audience_category_level_9
      Level 8: audiences.audience_category_level_8
      Level 7: audiences.audience_category_level_7
      Level 6: audiences.audience_category_level_6
      Level 5: audiences.audience_category_level_5
      Level 4: audiences.audience_category_level_4
      Level 3: audiences.audience_category_level_3
      Level 2: audiences.audience_category_level_2
      'Category: Level 1': audiences.audience_category_level_1
    row: 8
    col: 0
    width: 12
    height: 5
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"h2","id":1674743899365,"children":[{"bold":true,"text":"Step
      1","color":"hsl(31, 92%, 50%)"},{"text":" ","color":"hsl(31, 92%, 50%)"},{"text":"-","bold":true,"color":"hsl(31,
      92%, 50%)"},{"text":" Use the filters to select your Audience. They will be
      reflected under Audience Name"}]},{"type":"p","children":[{"text":""}],"id":1675814235647},{"type":"h2","children":[{"text":"Step
      2 -","bold":true,"color":"hsl(31, 92%, 50%)"},{"text":" Go to Persona Creator,
      click the link under \"Audience Definition\" and click again in \"Create Amazon
      Ads Persona\". There, you will be able to select age groups and gender and to
      name your persona"}],"id":1674742972726},{"type":"p","children":[{"text":""}],"id":1675814238257},{"type":"h2","children":[{"text":"Step
      3 - ","bold":true,"color":"hsl(31, 92%, 50%)"},{"text":"Wait 30 minutes and
      your Persona will be available in the "},{"type":"a","url":"https://initiativeinternal1.cloud.looker.com/dashboards/43?Audience+Name+Date=%22Art+Lovers%2C+2022-11-18T15%3A01%3A27.8+UTC%22","children":[{"text":"Custom
      Audiences - Top 30 segments dashboard"}],"id":1674743892553},{"text":""}],"id":1674742972726}]'
    rich_content_json: '{"format":"slate"}'
    row: 1
    col: 0
    width: 17
    height: 6
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<img src=\"http://logo-logos.com/2016/12/Amazon_logo.png\" width=\"\
      200\" height=\"70\"/>\n\n"
    row: 0
    col: 17
    width: 7
    height: 5
  - type: button
    name: button_593
    rich_content_json: '{"text":"Step 1 - Audience Name","description":"","newTab":true,"alignment":"center","size":"medium","style":"OUTLINED","color":"#E8710A"}'
    row: 7
    col: 0
    width: 12
    height: 1
  - type: button
    name: button_594
    rich_content_json: '{"text":"Step 2 - Persona Creator","description":"","newTab":false,"alignment":"center","size":"medium","style":"OUTLINED","color":"#E8710A"}'
    row: 7
    col: 13
    width: 11
    height: 1
  - type: button
    name: button_598
    rich_content_json: '{"text":"How to create a Persona?","description":"","newTab":true,"alignment":"center","size":"large","style":"FILLED","color":"#E8710A"}'
    row: 0
    col: 0
    width: 16
    height: 1
  filters:
  - name: 'Category: Level 1'
    title: 'Category: Level 1'
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: audiences
    listens_to_filters: []
    field: audiences.audience_category_level_1
  - name: Level 2
    title: Level 2
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: audiences
    listens_to_filters: ['Category: Level 1']
    field: audiences.audience_category_level_2
  - name: Level 3
    title: Level 3
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: audiences
    listens_to_filters: [Level 2, 'Category: Level 1']
    field: audiences.audience_category_level_3
  - name: Level 4
    title: Level 4
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: audiences
    listens_to_filters: [Level 3, Level 2, 'Category: Level 1']
    field: audiences.audience_category_level_4
  - name: Level 5
    title: Level 5
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: audiences
    listens_to_filters: [Level 4, Level 3, Level 2, 'Category: Level 1']
    field: audiences.audience_category_level_5
  - name: Level 6
    title: Level 6
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: audiences
    listens_to_filters: [Level 5, Level 4, Level 3, Level 2, 'Category: Level 1']
    field: audiences.audience_category_level_6
  - name: Level 7
    title: Level 7
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: audiences
    listens_to_filters: [Level 6, Level 5, Level 4, Level 3, Level 2, 'Category: Level
        1']
    field: audiences.audience_category_level_7
  - name: Level 8
    title: Level 8
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: audiences
    listens_to_filters: [Level 7, Level 6, Level 5, Level 4, Level 3, Level 2, 'Category:
        Level 1']
    field: audiences.audience_category_level_8
  - name: Level 9
    title: Level 9
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: audiences
    listens_to_filters: [Level 8, Level 7, Level 6, Level 5, Level 4, Level 3, Level
        2, 'Category: Level 1']
    field: audiences.audience_category_level_9
  - name: Audience Name
    title: Audience Name
    type: field_filter
    default_value: IM - Audio & Video Accessories
    allow_multiple_values: true
    required: true
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: audiences
    listens_to_filters: [Level 9, Level 8, Level 7, Level 6, Level 5, Level 4, Level
        3, Level 2, 'Category: Level 1']
    field: audiences.audiencename
