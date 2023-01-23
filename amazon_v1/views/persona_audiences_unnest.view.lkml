# view: persona_audiences_unnest {

#   view_label: "Audience Names"


#   dimension: audience{
#     hidden: yes
#     type: string
#     sql: ${TABLE} ;;
#   }

# }

# This view is created in order to join audience ids from Personas table with audience names from
# Audiences table. Since ids are nested, we need to prepare them for the joining

view: audience_id {
  view_label: "Audience Name"
  derived_table: {
    sql: SELECT
          _airbyte_ab_id,
          audience_id
      FROM ${personas.SQL_TABLE_NAME}
           AS personas
      , unnest (_airbyte_data.response.expression.audiences) t (audience_id)

      GROUP BY
      1,
      2 ;;
  }

  dimension: primary_key {
    type: string
    sql: concat(${_airbyte_ab_id}, ${audience_id}) ;;
    primary_key: yes
    hidden: yes
  }

  dimension: _airbyte_ab_id {
    hidden: yes
  }

  dimension: audience_id {
    type: string
  }
}
