connection: "insights_athena"

include: "/snowflake_v1/**/*.view"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard


explore: snowflake_mrisimmons {
  always_filter: {
    filters: [snowflake_mrisimmons.audience_name: "Brand.Competitors"]
    }
}

explore: snowflake_infobase {
  always_filter: {
    filters: [snowflake_infobase.audience_name: "Brand.Competitors"]
  }
}

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
