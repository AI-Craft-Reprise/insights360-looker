view: audience_definition {
    derived_table: {
      explore_source: audience_filter {
        # column: gender_array {}
        # column: age_group_array {}
        column: audience_array {}
        # column: advertiserid_array {}
        # column: profileid_array {}
        bind_all_filters: yes
      }
    }
    # dimension: gender_array {
    #   description: ""
    #   type: number
    # }
    # dimension: age_group_array {
    #   description: ""
    #   type: number
    # }
    dimension: audience_array {
      description: ""
      type: number
    }
    # dimension: advertiserid_array {
    #   description: ""
    #   type: number
    # }
    # dimension: profileid_array {
    #   description: ""
    #   type: number
    # }
    dimension: audience_definition {
      # sql: 'ProfileID: ' || array_join(${profileid_array}, ', ') || ' AdvertiserID: ' || array_join(${advertiserid_array}, ', ') || ' Gender: ' || array_join(${gender_array}, ', ') || ' Age Group: ' || array_join(${age_group_array}, ', ') || ' Audience IDs: ' || array_join(${audienceid_array}, ', ');;
      sql: 'audiences=' || array_join(${audience_array}, ',');;
      action: {
        label: "Create Amazon Ads Persona"
        url: "https://o4lmwhjjhcvcwvjafxox5vaoia0mihie.lambda-url.us-east-1.on.aws?action=personas.create&{{ value }}"
        form_url: "https://o4lmwhjjhcvcwvjafxox5vaoia0mihie.lambda-url.us-east-1.on.aws?action=looker.form&{{ value }}"
        # form_param: {
        #   name: "persona_name"
        #   type: string
        #   label: "Desired name for your Persona"
        #   required: yes
        # }
        # form_param: {
        #   name: "gender"
        #   type: select
        #   label: "Desired Gender"
        #   option: {
        #     name: "FEMALE"
        #     label: "FEMALE"
        #   }
        #   option: {
        #     name: "MALE"
        #     label: "MALE"
        #   }
        #   required: yes
        # }
      }
    }
  }
