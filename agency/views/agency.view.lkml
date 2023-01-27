view: agency {
  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;

# This view is crated to enable adding Initiative and UM logo depending on the user,
  # in case you need to add it to the dashboard, just find it in the explore

  derived_table: {
    sql: SELECT
        'UM' as name, 'https://raw.githubusercontent.com/AI-Craft-Reprise/insights360-infra/main/terraform/assets/um.png?token=GHSAT0AAAAAAB56ZAVJLPE3P36OQBPONW7MY6TYT4A' as logo
        union all
        SELECT
        'Initiative' as name, 'https://raw.githubusercontent.com/AI-Craft-Reprise/insights360-infra/main/terraform/assets/initiative.png?token=GHSAT0AAAAAAB56ZAVIXWEFUCEG2MZKBJLUY6TYWHA' as logo
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

# https://upload.wikimedia.org/wikipedia/en/2/27/Initiative_agency_logo.png
# https://www.umww.com/wp-content/uploads/2020/07/cropped-UM_Logo.png
