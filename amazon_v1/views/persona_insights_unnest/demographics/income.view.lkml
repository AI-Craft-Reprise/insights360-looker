view: income {

  view_label: "Persona Insights Demographics"

  dimension: income_attribute {
    type: string
    sql: ${TABLE}.attribute ;;
    order_by_field: subject_ordering
  }


dimension: subject_ordering {
  type: number
  sql:
      CASE
        WHEN ${income_attribute} = '$150,000 +' THEN 1
        WHEN ${income_attribute} = '$100,000 - $149,999' THEN 2
        WHEN ${income_attribute} = '$75,000 - $99,999' THEN 3
        WHEN ${income_attribute} = '$50,000 - $74,999'THEN 4
      END ;;
    hidden: yes
    description: "This dimension is used to force sort the attribute dimension."
  }

  dimension: income_percent {
    type: number
    sql: ${TABLE}.percentage ;;
  }

  dimension: income_affinity {
    type: number
    sql: ${TABLE}.affinity ;;
  }

  measure: total_income_percentage {
    type: sum
    sql: ${income_percent}/100 ;;
    value_format: "0%"
  }

  measure: total_income_affinity {
    type: sum
    sql: ${income_affinity} ;;
  }
  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: income {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
