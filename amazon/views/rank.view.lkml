view: rank {

  derived_table: {
    sql:
      select
      country
      , cast(@curRank := @curRank + 1 as int) as rank
      from (
        select country
        from orders
        where {% condition rank_date_filter %} orders.created_at {% endcondition %}
        group by country
        order by sum(revenue) desc) ordered_list, (select @curRank := 0);;
  }

  filter: rank_date_filter {
    type: date
  }

  dimension: country {
    primary_key: yes
    sql: ${TABLE}.country ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }
}
