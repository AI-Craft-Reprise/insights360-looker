view: age_groups {
  derived_table: {
    explore_source: content_insights {
      column: country {}
      column: uri {}
      column: content_type {}
      column: name {}
      column: insight_key {}
      column: request {}
      filters: {
        field: content_insights.dimension
        value: "age_groups"
      }
    }
  }
  dimension: pk {
    hidden:  yes
    primary_key: yes
    sql: ${country} || ${uri} || ${age_groups};;
  }

  dimension: uri {
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

  dimension: age_groups {
    sql: ${TABLE}.insight_key ;;
  }

}

view: age_groups_extend {
  extends: [age_groups]
  derived_table: {
    explore_source: content_insights {
      column: insight_value {}
    }
  }
  dimension: age_groups {hidden: yes}
}

view: age_groups_minutes {
  extends: [age_groups_extend]
  derived_table: {
    explore_source: content_insights {
      filters: {
        field: content_insights.field
        value: "minutes"
      }
    }
  }
  measure: age_groups_minutes {
    type: average
    sql: ${TABLE}.insight_value ;;
  }
}

view: age_groups_minutes_percent {
  extends: [age_groups_extend]
  derived_table: {
    explore_source: content_insights {
      filters: {
        field: content_insights.field
        value: "minutes_percent"
      }
    }
  }
  measure: age_groups_minutes_percent {
    type: average
    sql: ${TABLE}.insight_value ;;
  }
}
view: age_groups_streams {
  extends: [age_groups_extend]
  derived_table: {
    explore_source: content_insights {
      filters: {
        field: content_insights.field
        value: "streams"
      }
    }
  }
  measure: age_groups_streams {
    type: average
    sql: ${TABLE}.insight_value ;;
  }
}

view: age_groups_streams_percent {
  extends: [age_groups_extend]
  derived_table: {
    explore_source: content_insights {
      filters: {
        field: content_insights.field
        value: "streams_percent"
      }
    }
  }
  measure: age_groups_streams_percent {
    type: average
    sql: ${TABLE}.insight_value ;;
  }
}
