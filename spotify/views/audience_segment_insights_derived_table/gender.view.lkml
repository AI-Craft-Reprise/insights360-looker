# view: gender {
#   derived_table: {
#     explore_source: audience_segment_insights {
#       column: country {}
#       column: segment_id {}
#       column: segment_name {}
#       column: insight_key {}
#       column: request {}
#       filters: {
#         field: audience_segment_insights.dimension
#         value: "gender"
#       }
#     }
#   }
#   dimension: pk {
#     hidden:  yes
#     primary_key: yes
#     sql: ${country} || ${segment_id} || ${gender};;
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

#   dimension: gender {
#     sql: ${TABLE}.insight_key ;;
#   }

# }

# view: gender_extend {
#   extends: [gender]
#   derived_table: {
#     explore_source: audience_segment_insights {
#       column: insight_value {}
#     }
#   }
#   dimension: gender {hidden: yes}
# }

# view: gender_minutes {
#   extends: [gender_extend]
#   derived_table: {
#     explore_source: audience_segment_insights {
#       filters: {
#         field: audience_segment_insights.field
#         value: "minutes"
#       }
#     }
#   }
#   measure: gender_minutes {
#     type:  average
#     sql: ${TABLE}.insight_value ;;
#   }
# }

# view: gender_minutes_percent {
#   extends: [gender_extend]
#   derived_table: {
#     explore_source: audience_segment_insights {
#       filters: {
#         field: audience_segment_insights.field
#         value: "minutes_percent"
#       }
#     }
#   }
#   measure: gender_minutes_percent {
#     type: average
#     sql: ${TABLE}.insight_value ;;
#   }
# }
# view: gender_streams {
#   extends: [gender_extend]
#   derived_table: {
#     explore_source: audience_segment_insights {
#       filters: {
#         field: audience_segment_insights.field
#         value: "streams"
#       }
#     }
#   }
#   measure: gender_streams {
#     type: average
#     sql: ${TABLE}.insight_value ;;
#   }
# }

# view: gender_streams_percent {
#   extends: [gender_extend]
#   derived_table: {
#     explore_source: audience_segment_insights {
#       filters: {
#         field: audience_segment_insights.field
#         value: "streams_percent"
#       }
#     }
#   }
#   measure: gender_streams_percent {
#     type: average
#     sql: ${TABLE}.insight_value ;;
#   }
# }
