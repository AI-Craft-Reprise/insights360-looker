# view: time_of_day{
#   derived_table: {
#     explore_source: audience_segment_insights {
#       column: country {}
#       column: segment_id {}
#       column: segment_name {}
#       column: insight_key {}
#       column: request {}
#       filters: {
#         field: audience_segment_insights.dimension
#         value: "time_of_day"
#       }
#     }
#   }
#   dimension: pk {
#     hidden:  yes
#     primary_key: yes
#     sql: ${country} || ${segment_id} || ${time_of_day};;
#   }

#   dimension: segment_id {
#     type: string
#     hidden: yes
#   }

#   dimension: country {
#     hidden: yes
#     type:  string
#   }

#   dimension: request {
#     hidden: yes
#   }

#   dimension: time_of_day {
#     sql: ${TABLE}.insight_key ;;
#   }

# }

# view: time_of_day_extend {
#   extends: [time_of_day]
#   derived_table: {
#     explore_source: audience_segment_insights {
#       column: insight_value {}
#     }
#   }
#   dimension: time_of_day {hidden: yes}
# }

# view: time_of_day_minutes {
#   extends: [time_of_day_extend]
#   derived_table: {
#     explore_source: audience_segment_insights {
#       filters: {
#         field: audience_segment_insights.field
#         value: "minutes"
#       }
#     }
#   }
#   measure: time_of_day_minutes {
#     type:  average
#     sql: ${TABLE}.insight_value ;;
#   }
# }

# view: time_of_day_minutes_percent {
#   extends: [time_of_day_extend]
#   derived_table: {
#     explore_source: audience_segment_insights {
#       filters: {
#         field: audience_segment_insights.field
#         value: "minutes_percent"
#       }
#     }
#   }
#   measure: time_of_day_minutes_percent {
#     type: average
#     sql: ${TABLE}.insight_value ;;
#   }
# }
# view: time_of_day_streams {
#   extends: [time_of_day_extend]
#   derived_table: {
#     explore_source: audience_segment_insights {
#       filters: {
#         field: audience_segment_insights.field
#         value: "streams"
#       }
#     }
#   }
#   measure: time_of_day_streams {
#     type: average
#     sql: ${TABLE}.insight_value ;;
#   }
# }

# view: time_of_day_streams_percent {
#   extends: [time_of_day_extend]
#   derived_table: {
#     explore_source: audience_segment_insights {
#       filters: {
#         field: audience_segment_insights.field
#         value: "streams_percent"
#       }
#     }
#   }
#   measure: time_of_day_streams_percent {
#     type: average
#     sql: ${TABLE}.insight_value ;;
#   }
# }
