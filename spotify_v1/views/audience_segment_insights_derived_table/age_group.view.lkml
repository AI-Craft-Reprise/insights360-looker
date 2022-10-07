view: age_group {
  derived_table: {
    explore_source: audience_segment_insights {
      column: country {}
      column: segment_id {}
      column: segment_name {}
      column: insight_key {}
      column: request {}
      filters: {
        field: audience_segment_insights.dimension
        value: "age_group"
      }
    }
  }
  dimension: pk {
    hidden:  yes
    primary_key: yes
    sql: ${country} || ${segment_id} || ${age_group};;
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

  dimension: age_group {
    sql: ${TABLE}.insight_key ;;
  }

}

view: age_group_extend {
  extends: [age_group]
  derived_table: {
    explore_source: audience_segment_insights {
      column: insight_value {}
    }
  }
  dimension: age_group {hidden: yes}
}

view: age_group_minutes {
  extends: [age_group_extend]
  derived_table: {
    explore_source: audience_segment_insights {
      filters: {
        field: audience_segment_insights.field
        value: "minutes"
      }
    }
  }
  measure: age_group_minutes {
    type: average
    sql: ${TABLE}.insight_value ;;
  }
}

view: age_group_minutes_percent {
  extends: [age_group_extend]
  derived_table: {
    explore_source: audience_segment_insights {
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
view: age_group_streams {
  extends: [age_group_extend]
  derived_table: {
    explore_source: audience_segment_insights {
      filters: {
        field: audience_segment_insights.field
        value: "streams"
      }
    }
  }
  measure: age_group_streams {
    type: average
    sql: ${TABLE}.insight_value ;;
  }
}

view: age_group_streams_percent {
  extends: [age_group_extend]
  derived_table: {
    explore_source: audience_segment_insights {
      filters: {
        field: audience_segment_insights.field
        value: "streams_percent"
      }
    }
  }
  measure: age_group_streams_percent {
    type: average
    sql: ${TABLE}.insight_value ;;
  }
}
