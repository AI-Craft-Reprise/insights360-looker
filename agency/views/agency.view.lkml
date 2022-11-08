view: agency {
  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;

  derived_table: {
    sql: SELECT
        'UM' as name, 'https://www.umww.com/wp-content/uploads/2020/07/cropped-UM_Logo.png' as logo
        union all
        SELECT
        'Initiative' as name, 'https://upload.wikimedia.org/wikipedia/en/2/27/Initiative_agency_logo.png' as logo
      ;;
  }
  dimension: name {
    sql: ${TABLE}.name ;;
  }

  dimension: logo {
    sql: ${TABLE}.logo ;;
    html: <img src={{value}} width="100%" height="100%"> ;;
    # html: <img src={{value}} style="width:102px;height:103px;"> ;;
  }
  }
