view: audience_definition {
    derived_table: {
      explore_source: audience_filter {
        column: job_function_array {}
        column: job_function_urn_array {}
        # column: country_array {}
        column: industry_array {}
        column: industry_urn_array {}
        # column: company_array {}
        column: company_size_array {}
        column: company_size_urn_array {}
        column: job_seniority_array {}
        column: job_seniority_urn_array {}
        bind_all_filters: yes
      }
    }

    dimension: job_function_array {
      description: ""
      type: string
    }

  dimension: job_function_urn_array {
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

  dimension: industry_urn_array {
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

  dimension: job_seniority_urn_array {
    description: ""
    type: string
  }
  dimension: company_size_array {
    description: ""
    type: string
  }

  dimension: company_size_urn_array {
    description: ""
    type: string
  }



    dimension: audience_definition {
      sql: 'job_functions=' || array_join(${job_function_urn_array}, '_') || '&job_seniorities=' || array_join(${job_seniority_urn_array}, '_') || '&industries=' || array_join(${industry_urn_array}, '_') || '&staff_count_ranges=' || array_join(${company_size_urn_array}, '_');;
      action: {
        label: "Create LinkedIn Persona"
        url: "https://tnp62pdrwczfo3jbo6p6rjrbge0vsrys.lambda-url.us-east-1.on.aws/?action=request.create&locations=urn:li:geo:103644278&{{ value }}"
        form_url: "https://tnp62pdrwczfo3jbo6p6rjrbge0vsrys.lambda-url.us-east-1.on.aws/?action=looker.form&locations=urn:li:geo:103644278&{{ value }}"
      }
    }
  }
