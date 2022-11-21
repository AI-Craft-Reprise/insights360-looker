view: audience_definition {
    derived_table: {
      explore_source: audience_filter {
        column: job_function_array {}
        # column: country_array {}
        column: industry_array {}
        # column: company_array {}
        column: company_size_array {}
        column: job_seniority_array {}
        bind_all_filters: yes
      }
    }

    dimension: job_function_array {
      description: ""
      type: string
    }
    # dimension: country_array {
    #   description: ""
    #   type: number
    # }
    dimension: industry_array {
      description: ""
      type: string
    }
    # dimension: company_array {
    #   description: ""
    #   type: number
    # }
    dimension: job_seniority_array {
      description: ""
      type: string
    }
  dimension: company_size_array {
    description: ""
    type: string
  }


    dimension: audience_definition {
      sql: 'Job Function: ' || array_join(${job_function_array}, ', ') || ' Job Seniority: ' || array_join(${job_seniority_array}, ', ') || ' Industry: ' || array_join(${industry_array}, ', ') || ' Company Size: ' || array_join(${company_size_array}, ', ');;
      action: {
        label: "Create LinkedIn Persona"
        url: "https://y2p26beftohu34h2uck7ictspq0yteia.lambda-url.us-east-1.on.aws?action=personas.create&{{ value }}"
        form_url: "https://y2p26beftohu34h2uck7ictspq0yteia.lambda-url.us-east-1.on.aws?action=looker.form&{{ value }}"
      }
    }
  }
