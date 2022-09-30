# view: device {
#   derived_table: {
#     explore_source: content_insights {
#       column: country {}
#       column: gender_req {}
#       column: age_groups {}
#       column: segment_id {}
#       column: segment_name {}
#       column: insight_key {}
#       column: request {}
#       filters: {
#         field: content_insights.dimension
#         value: "device"
#       }
#     }
#   }

#   dimension: pk {
#     hidden:  yes
#     primary_key: yes
#     sql: ${country} || gedner || ${segment_id} || ${device};;
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

#   dimension: device {
#     sql: ${TABLE}.insight_key ;;
#   }

# }
