  view: interest_names {
    derived_table: {
      sql:
       SELECT _airbyte_data.response.id AS id, _airbyte_data.response.name as name
       FROM "airbyte-prd-snapchat-marketing-glue-ctg-db".targeting_interests_dlxc
       UNION
       SELECT _airbyte_data.response.id AS id, _airbyte_data.response.name as name
       FROM "airbyte-prd-snapchat-marketing-glue-ctg-db".targeting_interests_scls ;;
    }

    dimension: interest_id {
      type: string
      primary_key: yes
      sql: ${TABLE}.id ;;
    }

    dimension: interest_name {
      type: string
      sql: ${TABLE}.name ;;
  }
  }
