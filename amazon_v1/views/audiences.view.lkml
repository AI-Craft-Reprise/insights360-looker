view: audiences {
  sql_table_name: "airbyte-dev-amazon-ads-glue-ctg-db".audiences
    ;;
  # suggestions: no

  dimension: _airbyte_ab_id {
    type: string
    sql: ${TABLE}._airbyte_ab_id ;;
    hidden: yes
  }

  dimension: _airbyte_data {
    type: string
    sql: ${TABLE}._airbyte_data ;;
    hidden: yes
  }

  dimension: _airbyte_emitted_at {
    type: number
    sql: ${TABLE}._airbyte_emitted_at ;;
    hidden: yes
  }

  dimension: response {
    type: :string
    sql: ${_airbyte_data}.response;;
    hidden: yes
  }

  dimension: audienceid {
    type: string
    sql: ${response}.audienceid ;;
    primary_key: yes
  }

  dimension: category_path {
    type: string
    sql: ${response}.categorypath ;;
  }

  dimension: audience_category_level_1 {
    description: "Category Level 1"
    type: string
    sql: ${category_path}[1];;
  }

  dimension: audience_category_level_2 {
    description: "Category Level 2"
    type: string
    sql: if ((cardinality(${category_path})>1),
                  ${category_path}[2], null);;
  }

  dimension: audience_category_level_3 {
    description: "Category Level 3"
    type: string
    sql: if ((cardinality(${category_path})>2),
      ${category_path}[3], null);;
  }

  dimension: audience_category_level_4 {
    description: "Category Level 4"
    type: string
    sql: if ((cardinality(${category_path})>3),
      ${category_path}[4], null);;
  }

  dimension: audience_category_level_5 {
    description: "Category Level 5"
    type: string
    sql: if ((cardinality(${category_path})>4),
      ${category_path}[5], null);;
  }

  dimension: audience_category_level_6 {
    description: "Category Level 6"
    type: string
    sql: if ((cardinality(${category_path})>5),
      ${category_path}[6], null);;
  }

  dimension: audience_category_level_7 {
    description: "Category Level 7"
    type: string
    sql: if ((cardinality(${category_path})>6),
      ${category_path}[7], null);;
  }

  dimension: audience_category_level_8 {
    description: "Category Level 8"
    type: string
    sql: if ((cardinality(${category_path})>7),
     ${category_path}[8], null);;
  }

  dimension: audience_category_level_9 {
    description: "Category Level 9"
    type: string
    sql: if ((cardinality(${category_path})>8),
      ${category_path}[9], null);;
  }

  dimension: audiencename {
    label: "Audience Name"
    type: string
    sql: ${response}.audiencename ;;
  }

  dimension: description {
    type: string
    sql: ${response}.description ;;
  }

  dimension: category {
    type: string
    sql: ${response}.category ;;
    suggestions: ["In-market", "Interest", "Life event", "Lifestyle"]
  }


  dimension: createdate {
    type: date
    sql: ${response}.createdate ;;
  }

  dimension: updatedate {
    type: date
    sql: ${response}.updatedate ;;
  }

  dimension: forecasts {
    type: string
    hidden: yes
    sql: ${response}.forecasts ;;
  }

  dimension: inventoryforecasts {
    type: string
    sql: ${forecasts}.inventoryforecasts;;
    hidden: yes
  }

  dimension: all {
    type: string
    sql: ${inventoryforecasts}.all ;;
    hidden: yes
  }

  dimension: dailyreach {
    type: string
    sql: ${all}.dailyreach ;;
    hidden: yes
  }

  dimension: lowerboundinclusive {
    label: "Daily Reach Lower Bound"
    type: number
    sql: ${dailyreach}.lowerboundinclusive ;;
  }

  dimension: upperboundexclusive {
    label: "Daily Reach Upper Bound"
    type: number
    sql: ${dailyreach}.upperboundexclusive ;;
  }

  measure: avg_bound {
    type: sum
    sql: (${lowerboundinclusive}+${upperboundexclusive})/2 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: audienceid_array {
    sql: array_agg(distinct ${audienceid}) ;;
  }
}
