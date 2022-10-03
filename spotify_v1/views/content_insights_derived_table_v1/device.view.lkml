view: device {
  derived_table: {
    explore_source: content_insights {
      column: country {}
      column: gender_req {}
      column: age_group_req {}
      column: segment_id {}
      column: segment_name {}
      column: insight_key {}
      column: request {}
      filters: {
        field: content_insights.dimension
        value: "device"
      }
    }
  }

  dimension: pk {
    hidden:  yes
    primary_key: yes
    sql: ${country} || ${segment_id} || ${device};;
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

  dimension: device {
    sql: ${TABLE}.insight_key ;;
  }

}

view: device_extend {
  extends: [device]
  derived_table: {
    explore_source: content_insights {
      column: insight_value {}
    }
  }
  dimension: device {hidden: yes}
}

view: device_minutes {
  extends: [device_extend]
  derived_table: {
    explore_source: content_insights {
      filters: {
        field: content_insights.field
        value: "minutes"
      }
    }
  }
  measure: device_minutes {
    type:  average
    sql: ${TABLE}.insight_value ;;
  }
}

view: device_minutes_percent {
  extends: [device_extend]
  derived_table: {
    explore_source: content_insights {
      filters: {
        field: content_insights.field
        value: "minutes_percent"
      }
    }
  }
  measure: device_minutes_percent {
    type: average
    sql: ${TABLE}.insight_value ;;
  }
}
view: device_streams {
  extends: [device_extend]
  derived_table: {
    explore_source: content_insights {
      filters: {
        field: content_insights.field
        value: "streams"
      }
    }
  }
  measure: gender_streams {
    type: average
    sql: ${TABLE}.insight_value ;;
  }
}

view: device_streams_percent {
  extends: [device_extend]
  derived_table: {
    explore_source: content_insights {
      filters: {
        field: content_insights.field
        value: "streams_percent"
      }
    }
  }
  measure: device_streams_percent {
    type: average
    sql: ${TABLE}.insight_value ;;
  }
}
