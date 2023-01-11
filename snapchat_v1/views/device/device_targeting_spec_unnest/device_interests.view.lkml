view: device_interests {

    view_label: "Targeting Audience Filters"

    dimension: interest{
      hidden: yes
      type: string
      sql: ${TABLE} ;;
    }

  }

  view: device_interest_category {
    view_label: "Targeting Audience Filters"
    dimension: category_id{
      label: "Category ID"
      type: string
      sql: ${TABLE} ;;
    }
  }
