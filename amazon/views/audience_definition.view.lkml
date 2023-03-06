# If necessary, uncomment the line below to include explore_source.
# include: "amazon_v1.model.lkml"

view: audience_definition {
  derived_table: {
    explore_source: audiences {
      column: audienceid_array {}
      bind_all_filters: yes
    }
  }
  dimension: audienceid_array {
    description: ""
    type: number
  }
  dimension: audience_definition {
    sql: 'audiences=' || array_join(${audienceid_array}, ',');;
    action: {
      label: "Create Amazon Ads Persona"
      url: "@{amazon_persona_creator_url}?action=personas.create&{{ value }}"
      form_url: "@{amazon_persona_creator_url}?action=looker.form&{{ value }}"
    }
  }
}
