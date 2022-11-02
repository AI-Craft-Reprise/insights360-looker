view: audience_filter {
    derived_table: {
      explore_source: job_functions {
        column: job_function {field: job_functions.name}
        column: country { field: country.name }
        column: industry { field: industry.name }
        column: job_seniority { field: job_seniorities.name}
        # column: profileid { field: profiles.profileid }
      }
    }

    # dimension: gender {
    # }
    # dimension: age_group {
    # }
    dimension: audienceid {
    }
    # dimension: advertiserid {
    # }
    # dimension: profileid {
    # }
    # measure: gender_array {
    #   sql: array_agg(distinct ${gender}) ;;
    # }
    # measure: age_group_array {
    #   sql: array_agg(distinct ${age_group}) ;;
    # }
    measure: audienceid_array {
      sql: array_agg(distinct ${audienceid}) ;;
    }
    # measure: advertiserid_array {
    #   sql: array_agg(distinct ${advertiserid}) ;;
    # }
    # measure: profileid_array {
    #   sql: array_agg(distinct ${profileid}) ;;
    # }
  }
