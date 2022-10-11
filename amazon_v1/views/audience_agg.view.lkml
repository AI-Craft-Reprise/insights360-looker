# If necessary, uncomment the line below to include explore_source.
# include: "amazon_v1.model.lkml"

view: audience_agg {
  derived_table: {
    explore_source: audience_cross {
      column: gender_array {}
      column: age_group_array {}
      column: audienceid_array {}
      bind_all_filters: yes
    }
  }
  dimension: gender_array {
    description: ""
    type: number
  }
  dimension: age_group_array {
    description: ""
    type: number
  }
  dimension: audienceid_array {
    description: ""
    type: number
  }
  dimension: audience_definition {
    sql: 'Gender: ' || array_join(${gender_array}, ', ') || ' Age Group: ' || array_join(${age_group_array}, ', ') || ' Audience IDs: ' || array_join(${audienceid_array}, ', ');;
    action: {
      label: "Create persona"
      url: "https://example.com"
      form_param: {
        name: "audience_name"
        type: string
        label: "Desired audience name"
        required: yes
      }
    }
  }
}
