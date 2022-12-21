view: audience_filter {

    derived_table: {
      explore_source: job_functions {
        # column: company { field: company.company }
        column: company_size { field: company_size.company_size }
        column: company_size_urn {field:company_size.company_size_urn}
        # column: country { field: country.country }
        # column: country_urn {field: country.country_urn}
        column: industry { field: industry.industry }
        column: industry_urn {field: industry.industry_urn}
        column: job_function {}
        column: job_function_urn {field:job_functions.job_function_urn}
        column: job_seniority { field: job_seniorities.job_seniority }
        column: job_seniority_urn {field: job_seniorities.job_seniority_urn}
      }
    }
    # dimension: company {
    #   description: ""
    # }
    dimension: company_size {
      description: ""
      suggestions: ["10,001+ employees", "5001-10,000 employees", "1001-5000 employees", "501-1000 employees","201-500 employees","51-200 employees", "11-50 employees","2-10 employees", "Myself Only"
]
    }
    # dimension: country {
    #   description: ""
    # }
    dimension: industry {
      description: ""
    }
    dimension: job_function {
      description: ""
    }
    dimension: job_seniority {
      description: ""
    }

    dimension: company_size_urn {}
    dimension: industry_urn {}
    dimension: job_seniority_urn {}
    dimension: job_function_urn {}
    dimension: country_urn {}

    measure: job_function_array {
      sql: array_agg(distinct ${job_function}) ;;
    }

  #   measure: company_array {
  #   sql: array_agg(distinct ${company}) ;;
  # }

    measure: company_size_array {
    sql: array_agg(distinct ${company_size}) ;;
  }

  #   measure: country_array {
  #   sql: array_agg(distinct ${country}) ;;
  # }

  measure: job_seniority_array {
    sql: array_agg(distinct ${job_seniority}) ;;
  }

  measure: industry_array {
    sql: array_agg(distinct ${industry}) ;;
  }

  measure: job_function_urn_array {
    sql: array_agg(distinct ${job_function_urn}) ;;
  }

  measure: company_size_urn_array {
    sql: array_agg(distinct ${company_size_urn}) ;;
  }

  measure: job_seniority_urn_array {
    sql: array_agg(distinct ${job_seniority_urn}) ;;
  }

  measure: industry_urn_array {
    sql: array_agg(distinct ${industry_urn}) ;;
  }

  # measure: country_urn_array {
  #   sql: array_agg(distinct ${country_urn}) ;;
  # }




  }
