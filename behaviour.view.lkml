view: behaviour {
sql_table_name: sys.Behaviour ;;


  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }

  dimension: hour {
    type: string
    sql: ${TABLE}.Hour ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.Device ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.Channel ;;
  }

  dimension: sessions {
    type: string
    sql: ${TABLE}.Sessions ;;
  }

  dimension: session_duration {
    type: string
    sql: ${TABLE}.sessionDuration ;;
  }

  dimension: bounce_rate {
    type: string
    sql: ${TABLE}.bounceRate ;;
  }

  dimension: pageviews {
    type: string
    sql: ${TABLE}.pageviews ;;
  }

  dimension: sales {
    type: string
    sql: ${TABLE}.Sales ;;
  }

  dimension: revenue {
    type: string
    sql: ${TABLE}.Revenue ;;
  }

  dimension: bounce_rate2 {
    type: string
    sql: ${TABLE}.bounceRate2 ;;
  }

  dimension: day {
    type: string
    sql: ${TABLE}.Day ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.Month ;;
  }

  dimension: weekdays {
    type: string
    sql: ${TABLE}.Weekdays ;;
  }

  set: detail {
    fields: [
      date,
      hour,
      device,
      channel,
      sessions,
      session_duration,
      bounce_rate,
      pageviews,
      sales,
      revenue,
      bounce_rate2,
      day,
      month,
      weekdays
    ]
  }
}
