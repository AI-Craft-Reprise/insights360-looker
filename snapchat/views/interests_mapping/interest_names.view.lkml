  view: interest_names {
    view_label: "Targeting Audience Filters"
    derived_table: {
      sql:
       --SELECT _airbyte_data.response.id AS id, _airbyte_data.response.name as name
       --FROM "airbyte-prd-snapchat-marketing-glue-ctg-db".targeting_interests_dlxc
       --UNION
       SELECT _airbyte_data.response.id AS id, _airbyte_data.response.name as name, _airbyte_data.response.path as path
       FROM "airbyte-prd-snapchat-marketing-glue-ctg-db".targeting_interests_scls
      UNION
       --SELECT _airbyte_data.response.id AS id, _airbyte_data.response.name as name, _airbyte_data.response.path as path
      -- FROM "airbyte-prd-snapchat-marketing-glue-ctg-db".targeting_interests_dlxp
     -- UNION
      -- SELECT _airbyte_data.response.id AS id, _airbyte_data.response.name as name, _airbyte_data.response.path as path
       --FROM "airbyte-prd-snapchat-marketing-glue-ctg-db".targeting_interests_dlxs
      --UNION
       --SELECT _airbyte_data.response.id AS id, _airbyte_data.response.name as name, _airbyte_data.response.path as path
       --FROM "airbyte-prd-snapchat-marketing-glue-ctg-db".targeting_interests_nln
      --UNION
       --SELECT _airbyte_data.response.id AS id, _airbyte_data.response.name as name, _airbyte_data.response.path as path
       --FROM "airbyte-prd-snapchat-marketing-glue-ctg-db".targeting_interests_shp
      --UNION
       SELECT _airbyte_data.response.id AS id, _airbyte_data.response.name as name, _airbyte_data.response.path as path
       FROM "airbyte-prd-snapchat-marketing-glue-ctg-db".targeting_interests_vac;;
    }

    dimension: interest_id {
      type: string
      hidden: yes
      primary_key: yes
      sql: ${TABLE}.id ;;
    }

    dimension: interest_name {
      type: string
      sql: ${TABLE}.name ;;
    }
    dimension: interest_path {
      hidden: yes
      type: string
      sql: SUBSTRING (${TABLE}.path, 2) ;;
    }
    dimension: interest_category{
      type: string
      sql: CASE WHEN STRPOS(${interest_path},'/')<>0
              THEN SUBSTRING (${interest_path}, 1, (STRPOS(${interest_path}, '/')-1))
              ELSE ${interest_path} end;;
    }
  }
