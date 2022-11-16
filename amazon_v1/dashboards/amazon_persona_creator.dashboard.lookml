- dashboard: amazon_persona_creator
  title: Amazon Persona Creator
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: IQLvQfhW93vghrY1r13riI
  elements:
  - title: Persona Creator
    name: Persona Creator
    model: amazon_v1
    explore: audiences
    type: table
    fields: [audience_definition.audience_definition]
    filters: {}
    sorts: [audience_definition.audience_definition]
    limit: 500
    listen:
      Audience Name: audiences.audiencename
      Category: audiences.category
    row: 0
    col: 10
    width: 8
    height: 4
  - title: Audiences
    name: Audiences
    model: amazon_v1
    explore: audiences
    type: looker_grid
    fields: [audiences.category, audiences.audiencename]
    sorts: [audiences.audiencename]
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
      Audience Name: audiences.audiencename
      Category: audiences.category
    row: 0
    col: 0
    width: 9
    height: 4
  filters:
  - name: Category
    title: Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: amazon_v1
    explore: audiences
    listens_to_filters: []
    field: audiences.category
  - name: Audience Name
    title: Audience Name
    type: field_filter
    default_value: Dress Shirts
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: amazon_v1
    explore: audiences
    listens_to_filters: []
    field: audiences.audiencename
