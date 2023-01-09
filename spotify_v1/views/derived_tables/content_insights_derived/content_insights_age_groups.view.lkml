
 # If necessary, uncomment the line below to include explore_source.

# include: "spotify_insights_v1.model.lkml"

 view: content_insights_age_groups {
    derived_table: {
      explore_source: content_insights {
        column: dimension {}
        column: content_type {}
        column: name {}
        column: uri {}
        column: field {}
        column: aggregation {}
        column: insight_key {}
        column: insight_value {}
        column: request {}
        column: age {field:age.age}
        column: content_country {field:content_country.content_country}
        column: gender {field:gender.gender}
        filters: {
          field: age.age
          value: ""
        }
        filters: {
          field: content_country.content_country
          value: ""
        }
        filters: {
          field: gender.gender
          value: ""
        }
        }
        }


  dimension: pk {
    hidden:  yes
    primary_key: yes
   sql: ${age}||${content_country}||${gender}||${uri} ;;
  }
    dimension: request {}
    dimension: dimension {
      description: ""
    }
    dimension: content_type {
      description: ""
    }
    dimension: name {
      description: ""
    }
    dimension: uri {
      description: ""
    }
    dimension: field {
      description: ""
    }
    dimension: aggregation {
      description: ""
    }
    dimension: insight_key {
      description: ""
    }
    dimension: insight_value {
      description: ""
      type: number
    }

    dimension: content_country {}

    dimension: age {}

    dimension: gender {}
    }


    view: age_group_extend {
      extends: [content_insights_age_groups]
      derived_table: {
        explore_source: content_insights {
          column: insight_value {}
        }
      }
      dimension: age_group {hidden: yes}
    }

    # view: age_group_minutes {
    #   extends: [age_group_extend]
    #   derived_table: {
    #     explore_source: content_insights {
    #       filters: {
    #         field: content_insights.field
    #         value: "minutes"
    #       }
    #     }
    #   }
    #   measure: age_group_minutes {
    #     type: average
    #     sql: ${TABLE}.insight_value ;;
    #   }
    # }

    view: age_group_minutes_percent {
      extends: [age_group_extend]
      derived_table: {
        explore_source: content_insights {
          filters: {
            field: audience_segment_insights.field
            value: "minutes_percent"
          }
        }
      }
      measure: age_group_minutes_percent {
        type: average
        sql: ${TABLE}.insight_value ;;
      }
    }
    # view: age_group_streams {
    #   extends: [age_group_extend]
    #   derived_table: {
    #     explore_source: content_insights {
    #       filters: {
    #         field: content_insights.field
    #         value: "streams"
    #       }
    #     }
    #   }
    #   measure: age_group_streams {
    #     type: average
    #     sql: ${TABLE}.insight_value ;;
    #   }
    # }

    # view: age_group_streams_percent {
    #   extends: [age_group_extend]
    #   derived_table: {
    #     explore_source: content_insights {
    #       filters: {
    #         field: content_insights.field
    #         value: "streams_percent"
    #       }
    #     }
    #   }
    #   measure: age_group_streams_percent {
    #     type: average
    #     sql: ${TABLE}.insight_value ;;
    #   }
    # }
