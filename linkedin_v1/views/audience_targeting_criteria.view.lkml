view: audience_targeting_criteria {

  dimension: urn {
    sql: ${TABLE}.urn ;;
  }

  dimension: value {
    sql: ${TABLE}.value ;;
  }

  }

# LEFT JOIN UNNEST(${resource_compute_googleapis_com_firewall.resource__data__allowed}) as allowed
# CROSS JOIN UNNEST(allowed.ports) as resource_compute_googleapis_com_firewall__resource__data__allowed__ports ;;
