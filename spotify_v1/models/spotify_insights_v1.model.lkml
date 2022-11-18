connection: "insights_athena"

include: "/spotify_v1/views/content_insights.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

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


explore: content_insights {
  join: content_insights_gender {
    sql: ,
unnest(content_insights._airbyte_data.request.body.filters.gender) t(content_insights_gender) ;;
    relationship: one_to_many
  }

}
