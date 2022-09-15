view: days_of_week {
  derived_table: {
    explore_source: audience_segment_insights {
      column: country {}
      column: segment_id {}
      column: segment_name {}
      column: insight_key {}
      column: request {}
      filters: {
        field: audience_segment_insights.dimension
        value: "days_of_week"
      }
    }
  }
  dimension: pk {
    hidden:  yes
    primary_key: yes
    sql: ${country} || ${segment_id} || ${days_of_week};;
  }

  dimension: segment_id {
    type: string
    hidden: yes
  }

  dimension: country {
    hidden: yes
    type:  string
  }

  dimension: request {
    hidden: yes
  }

  dimension: days_of_week {
    sql: ${TABLE}.insight_key ;;
  }

}

view: days_of_week_extend {
  extends: [days_of_week]
  derived_table: {
    explore_source: audience_segment_insights {
      column: insight_value {}
    }
  }
  dimension: days_of_week {hidden: yes}
}

view: days_of_week_minutes {
  extends: [days_of_week_extend]
  derived_table: {
    explore_source: audience_segment_insights {
      filters: {
        field: audience_segment_insights.field
        value: "minutes"
      }
    }
  }
  measure: days_of_week_minutes {
    type:  average
    sql: ${TABLE}.insight_value ;;
  }
}

view: days_of_week_minutes_percent {
  extends: [days_of_week_extend]
  derived_table: {
    explore_source: audience_segment_insights {
      filters: {
        field: audience_segment_insights.field
        value: "minutes_percent"
      }
    }
  }
  measure: days_of_week_minutes_percent {
    type: average
    sql: ${TABLE}.insight_value ;;
  }
}
view: days_of_week_streams {
  extends: [days_of_week_extend]
  derived_table: {
    explore_source: audience_segment_insights {
      filters: {
        field: audience_segment_insights.field
        value: "streams"
      }
    }
  }
  measure: days_of_week_streams {
    type: average
    sql: ${TABLE}.insight_value ;;
  }
}

view: days_of_week_streams_percent {
  extends: [days_of_week_extend]
  derived_table: {
    explore_source: audience_segment_insights {
      filters: {
        field: audience_segment_insights.field
        value: "streams_percent"
      }
    }
  }
  measure: days_of_week_streams_percent {
    type: average
    sql: ${TABLE}.insight_value ;;
  }

  # parameter: field_to_select{
  #   type: unquoted
  #   allowed_value: {
  #     value: "days_of_week_minutes"
  #     label: "Minutes"
  #   }
  #   allowed_value: {
  #     value: "days_of_week_minutes_percent"
  #     label: "Minutes Percent"
  #   }
  #   allowed_value: {
  #       value: "days_of_week_streams"
  #       label: "Streams"
  #   }
  #   allowed_value: {
  #         value: "days_of_week_streams_percent"
  #         label: "Streams Percent"
  #   }
  # }

  # dimension: metric {
  #   type: string
  #   sql: ${TABLE}.{% parameter field_to_select %};;
  #   label_from_parameter: field_to_select
  # }
  }
