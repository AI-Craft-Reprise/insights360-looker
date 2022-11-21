view: audience_filter {

    derived_table: {
      explore_source: job_functions {
        # column: company { field: company.company }
        column: company_size { field: company_size.company_size }
        column: company_size_urn {field:company_size.company_size_urn}
        # column: country { field: country.country }
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






  }
