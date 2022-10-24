connection: "insights_athena"

include: "/amazon/**/*.view"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

datagroup: insights_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: insights_default_datagroup

explore: persona_insights{

  join: interests {
    relationship: one_to_many
    sql: ,
          unnest(
            _airbyte_data.response.topaudiences.interests
            ) t(interests)            ;;
  }

  join: inmarket {
    relationship: one_to_many
    sql: ,
          unnest(
            _airbyte_data.response.topaudiences.inmarket
            ) t(inmarket)            ;;
  }

  join: lifestyle {
    relationship: one_to_many
    sql: ,
          unnest(
            _airbyte_data.response.topaudiences.lifestyle
            ) t(lifestyle)            ;;
  }

  join: lifeevents {
    relationship: one_to_many
    sql: ,
          unnest(
            _airbyte_data.response.topaudiences.lifeevents
            ) t(lifeevents)            ;;
  }

  join: lookalike {
    relationship: one_to_many
    sql: ,
          unnest(
            _airbyte_data.response.topaudiences.lookalike
            ) t(lookalike)            ;;
  }


  join: topretailcategories {
    relationship: one_to_many
    sql: ,
          unnest(
            _airbyte_data.response.topretailcategories
            ) t(topretailcategories)            ;;
  }

  join: topretailcategories_path {
    relationship: one_to_many
    sql: ,
          unnest(
            _airbyte_data.response.topretailcategories.path
            ) t(topretailcategories_path)            ;;
  }

  join: demographics_age {
    relationship: one_to_many
    sql: ,
          unnest(
            _airbyte_data.response.demographics.age
            ) t(demographics_age)            ;;
  }

  join: demographics_gender {
    relationship: one_to_many
    sql: ,
          unnest(
            _airbyte_data.response.demographics.gender
            ) t(demographics_gender)            ;;
  }

  join: demographics_income {
    relationship: one_to_many
    sql: ,
          unnest(
            _airbyte_data.response.demographics.income
            ) t(demographics_income)            ;;
  }

  join: demographics_propertyownership {
    relationship: one_to_many
    sql: ,
          unnest(
            _airbyte_data.response.demographics.propertyownership
            ) t(demographics_propertyownership)            ;;
  }

  join: demographics_relationship {
    relationship: one_to_many
    sql: ,
          unnest(
            _airbyte_data.response.demographics.relationship
            ) t(demographics_relationship)            ;;
  }

}


explore: overlapping_audiences {}



# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
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
# }
