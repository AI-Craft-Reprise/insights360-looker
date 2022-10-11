connection: "insights_athena"

include: "/amazon_v1/**/*.view"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#

explore: audience_gender {
  hidden: yes
  join: audience_age_group {
    type: cross
    relationship: many_to_many
  }
  join: audiences {
    type: cross
    relationship: many_to_many
  }
}

explore: audience_cross {
  label: "Audience Creator"
  view_label: "Audience Filters"
  join: audience_agg {
    view_label: "Audience Definition"
    type: cross
    relationship: many_to_one
  }
}


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

  # join: personas {
  #   relationship: one_to_one
  #   sql_on: ${persona_insights.personaid}=${personas.personaid}  ;;

  # }

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

  # join: demo_propertyownership {
  #     sql: ,UNNEST(_airbyte_data.response.propertyownership) AS propertyownership ;;
  #     relationship: one_to_many
  # }

  # join: relationship {
  #   sql: ,UNNEST(_airbyte_data.response.relationship) AS relationship ;;
  #   relationship: one_to_many
  # }}

  join: gender {
  sql: , UNNEST(_airbyte_data.response.gender) as gender ;;
  relationship: one_to_many

  # join: gender {
  #     sql: ,UNNEST(_airbyte_data.response.gender) AS gender ;;
  #     relationship: one_to_many
  }}

explore: persona_insights {

  join: inmarket {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(_airbyte_data.response.personainsights.topaudiences.inmarket)
          AS t(inmarket) ;;
  }

  join: lifestyle {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(_airbyte_data.response.personainsights.topaudiences.lifestyle)
      AS t(lifestyle) ;;
  }

  join: interests {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(_airbyte_data.response.personainsights.topaudiences.interests)
      AS t(interests) ;;
  }

  join: lifeevents {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(_airbyte_data.response.personainsights.topaudiences.lifeevents)
      AS t(lifeevents) ;;
  }

  join: topretailcategories {
    relationship: one_to_many
    sql: CROSS JOIN UNNEST(_airbyte_data.response.personainsights.topaudiences.topretailcategories)
      AS t(topretailcategories) ;;
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
