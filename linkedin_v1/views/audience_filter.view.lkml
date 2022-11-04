view: audience_filter {

    derived_table: {
      explore_source: job_functions {
        column: company { field: company.company }
        column: company_size { field: company_size.company_size }
        column: country { field: country.country }
        column: industry { field: industry.industry }
        column: job_function {}
        column: job_seniority { field: job_seniorities.job_seniority }
      }
    }
    # dimension: company {
    #   description: ""
    # }
    # dimension: company_size {
    #   description: ""
    # }
    # dimension: country {
    #   description: ""
    # }
    # dimension: industry {
    #   description: ""
    # }
    dimension: job_function {
      description: ""
    }
    # dimension: job_seniority {
    #   description: ""
    # }

    measure: audience_array {
      sql: array_agg(distinct ${job_function}) ;;
    }

  }
