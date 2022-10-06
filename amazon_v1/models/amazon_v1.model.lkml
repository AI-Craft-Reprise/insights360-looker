connection: "insights_athena"

include: "/amazon_v1/**/*.view"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#

explore: overlapping_audiences {}

explore: audiences {

  join: overlapping_audiences {
    relationship: one_to_one
    sql_on: ${audiences.audienceid}=${overlapping_audiences.audienceid} ;;
  }

  join: audiences_with_advertisers {
    relationship: one_to_one
    sql_on: ${audiences.audienceid}=${audiences_with_advertisers.audienceid} ;;
  }

  join: advertisers {
    relationship: one_to_many
    sql_on: ${audiences_with_advertisers.advertiserid}=${advertisers.advertiserid} ;;
  }

  join: overlapping_audiences_with_advertisers {
    relationship: one_to_many
    sql_on: ${audiences.audienceid}=${overlapping_audiences_with_advertisers.audienceid} ;;
  }

  join: persona_demographics {
    relationship: one_to_many
    sql_on: ${advertisers.advertiserid}=${persona_demographics.advertiserid} and ${advertisers.profileid}=${persona_demographics.profileid} ;;
  }

  join: persona_insights {
    relationship: one_to_one
    sql_on: ${persona_demographics.advertiserid}=${persona_insights.advertiserid} and ${persona_demographics.profileid}=${persona_insights.profileid} ;;
  }

  join: personas {
    relationship: one_to_one
    sql_on: ${persona_insights.personaid}=${personas.personaid}  ;;

  }

  # join: demo_propertyownership_unnest {
  #   relationship: one_to_many
  #   sql: ,
  #       unnest(
  #         _airbyte_data.response
  #       ) t(demo_propertyownership_unnest) ;;
  # }

  # join: demo_propertyownership {
  #   required_joins: [demo_propertyownership_unnest]
  #   relationship: one_to_many
  #   sql: ,
  #       unnest(
  #         demo_propertyownership_unnest.propertyownership
  #       ) t(demo_propertyownership) ;;
  # }

}

# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }

explore: persona_demographics {

  join: demo_propertyownership {
      sql: ,UNNEST(_airbyte_data.response.propertyownership) AS propertyownership ;;
      relationship: one_to_many

  }


  # join: demo_propertyownership_unnest {
  #   relationship: one_to_many
  #   sql: ,
  #       unnest(
  #         _airbyte_data.response
  #       ) t(demo_propertyownership_unnest) ;;
  # }

  # join: demo_propertyownership {
  #   required_joins: [demo_propertyownership_unnest]
  #   relationship: one_to_many
  #   sql: ,
  #       unnest(
  #         demo_propertyownership_unnest.propertyownership
  #       ) t(demo_propertyownership) ;;
  # }
}

# }
