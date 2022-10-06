view: persona_insights {
  sql_table_name: "airbyte-dev-amazon-ads-glue-ctg-db".persona_insights
    ;;
  suggestions: no

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

  dimension: category{
    type: string
    sql: ${_airbyte_data}.category ;;
  }

  dimension: category_type{
    type: string
    sql: ${_airbyte_data}.category_type ;;
  }

  dimension: advertiserid{
    type: string
    sql: ${_airbyte_data}.advertiserid ;;
  }

  dimension: profileid{
    type: string
    sql: ${_airbyte_data}.profileid ;;
  }

  dimension: personaid{
    type: string
    sql: ${_airbyte_data}.personaid ;;
    primary_key: yes
  }

  dimension: lastupdatedat{
    type: date
    sql: ${_airbyte_data}.lastupdatedat ;;
  }

  dimension: estimatedsize{
    type: string
    sql: ${_airbyte_data}.estimatedsize ;;
  }

  dimension: min{
    label: "Min Estimated Size "
    type: number
    sql: ${estimatedsize}.min ;;
  }

  dimension: max{
    label: "Max Estimated Size"
    type: number
    sql: ${estimatedsize}.max ;;
  }

  dimension: percentage{
    type: number
    sql: ${_airbyte_data}.percentage ;;
   value_format_name: percent_1
  }

  dimension: affinity{
    type: number
    sql: ${_airbyte_data}.affinity ;;
    value_format: "0.00"
  }

  dimension: name{
    type: string
    sql: ${_airbyte_data}.name ;;
  }

  dimension: id{
    type: string
    sql: ${_airbyte_data}.id ;;
  }

  dimension: path{
    type: string
    sql: ${_airbyte_data}.path ;;
  }

  dimension: attribute{
    type: string
    sql: ${_airbyte_data}.attribute ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
