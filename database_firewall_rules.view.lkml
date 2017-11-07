view: database_firewall_rules {
  sql_table_name: sys.database_firewall_rules ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: create {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.create_date ;;
  }

  dimension: end_ip_address {
    type: string
    sql: ${TABLE}.end_ip_address ;;
  }

  dimension_group: modify {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.modify_date ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: start_ip_address {
    type: string
    sql: ${TABLE}.start_ip_address ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
