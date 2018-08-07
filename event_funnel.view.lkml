include: "date_base.view"
include: "period_base.view"
include: "/app_event_analytics_config/ga360_config.view"
include: "sessions.view"

view: event_funnel {
  extends: [ga360_config, event_filters, period_parameter]
  derived_table: {
    explore_source: ga_sessions {
      column: date { field: ga_sessions.visitStart_date }
      column: visit_id { field: ga_sessions.visitId }
      column: full_visitor_id { field: ga_sessions.fullVisitorId }
      column: session_start { field: ga_sessions.visitStartSeconds }
      column: event_1 { field: ga_sessions.min_event_1_ts }
      column: event_2_first { field: ga_sessions.min_event_2_ts }
      column: event_2_last { field: ga_sessions.max_event_2_ts }
      column: event_3_first { field: ga_sessions.min_event_3_ts }
      column: event_3_last { field: ga_sessions.max_event_3_ts }
      column: event_4_first { field: ga_sessions.min_event_4_ts }
      column: event_4_last { field: ga_sessions.max_event_4_ts }

      bind_filters: {
        from_field: event_funnel.period
        to_field: ga_sessions.period
      }
      bind_filters: {
        from_field: event_funnel.event_1_filter
        to_field: ga_sessions.event_1_filter
      }
      bind_filters: {
        from_field: event_funnel.event_2_filter
        to_field: ga_sessions.event_2_filter
      }
      bind_filters: {
        from_field: event_funnel.event_3_filter
        to_field: ga_sessions.event_3_filter
      }
      bind_filters: {
        from_field: event_funnel.event_4_filter
        to_field: ga_sessions.event_4_filter
      }
      filters: {
        field: ga_sessions.date_period_latest
        value: "Yes"
      }
    }
  }

  dimension: id {
    type: string
    primary_key: yes
    sql: concat(
      CAST(${visit_id} AS STRING), "|",
      CAST(${full_visitor_id} AS STRING), "|",
      CAST(${date} AS STRING)) ;;
    hidden: yes
  }

  dimension: date {
    type: date
    sql: ${TABLE}.date ;;
  }

  dimension: visit_id {
    type: string
    sql: ${TABLE}.visit_id ;;
  }

  dimension: full_visitor_id {
    type: number
    sql: ${TABLE}.full_visitor_id ;;
  }

  dimension_group: session_start {
    type: time
    hidden: yes
    convert_tz: no
    timeframes: [
      time,
      date,
      week,
      month,
      year,
      raw
    ]
    sql: ${TABLE}.session_start ;;
  }

  dimension: event_1 {
    description: "First occurrence of event 1"
    type: date_time
    convert_tz: no
    hidden: yes
    sql: TIMESTAMP(${TABLE}.event_1) ;;
  }

  dimension: event_2_first {
    description: "First occurrence of event 2"
    type: date_time
    convert_tz: no
    hidden: yes
    sql: TIMESTAMP(${TABLE}.event_2_first) ;;
  }

  dimension: event_2_last {
    description: "Last occurrence of event 2"
    type: date_time
    convert_tz: no
    hidden: yes
    sql: TIMESTAMP(${TABLE}.event_2_last) ;;
  }

  dimension: event_3_first {
    description: "First occurrence of event 3"
    type: date_time
    convert_tz: no
    hidden: yes
    sql: TIMESTAMP(${TABLE}.event_3_first) ;;
  }

  dimension: event_3_last {
    description: "Last occurrence of event 3"
    type: date_time
    convert_tz: no
    hidden: yes
    sql: TIMESTAMP(${TABLE}.event_3_last) ;;
  }

  dimension: event_4_first {
    description: "First occurrence of event 4"
    type: date_time
    convert_tz: no
    hidden: yes
    sql: TIMESTAMP(${TABLE}.event_4_first) ;;
  }

  dimension: event_4_last {
    description: "Last occurrence of event 4"
    type: date_time
    convert_tz: no
    hidden: yes
    sql: TIMESTAMP(${TABLE}.event_4_last) ;;
  }

  dimension: event1_before_event2 {
    type: yesno
    hidden: yes
    sql: ${TABLE}.event_1 < ${TABLE}.event_2_last ;;
  }

  dimension: event1_before_event3 {
    type: yesno
    hidden: yes
    sql: ${TABLE}.event_1 < ${TABLE}.event_3_last ;;
  }

  dimension: event1_before_event4 {
    type: yesno
    hidden: yes
    sql: ${TABLE}.event_1 < ${TABLE}.event_4_last ;;
  }

  dimension: event2_before_event3 {
    type: yesno
    hidden: yes
    sql: ${TABLE}.event_2_first < ${TABLE}.event_3_last ;;
  }

  dimension: event2_before_event4 {
    type: yesno
    hidden: yes
    sql: ${TABLE}.event_2_first < ${TABLE}.event_4_last ;;
  }

  dimension: event3_before_event4 {
    type: yesno
    hidden: yes
    sql: ${TABLE}.event_3_first < ${TABLE}.event_4_last ;;
  }

  dimension: reached_event_1 {
    hidden: yes
    type: yesno
    sql: (${event_1} IS NOT NULL) ;;
  }

  dimension: reached_event_2 {
    hidden: yes
    type: yesno
    sql: (${event_1} IS NOT NULL AND ${event_2_first} IS NOT NULL AND ${event_1} < ${event_2_last})
      ;;
  }

  dimension: reached_event_3 {
    hidden: yes
    type: yesno
    sql: (${event_1} IS NOT NULL AND ${event_2_last} IS NOT NULL AND ${event_3_last}  IS NOT NULL
      AND ${event_1} < ${event_2_last} AND ${event_1} < ${event_3_last} AND ${event_2_first} < ${event_3_last})
       ;;
  }

  dimension: reached_event_4 {
    hidden: yes
    type: yesno
    sql: (${event_1} IS NOT NULL AND ${event_2_last} IS NOT NULL AND ${event_3_last}  IS NOT NULL AND ${event_4_last} IS NOT NULL
      AND ${event_1} < ${event_2_last} AND ${event_1} < ${event_3_last} AND ${event_1} < ${event_4_last} AND ${event_2_first} < ${event_3_last} AND ${event_2_first} < ${event_4_last} AND ${event_3_first} < ${event_4_last})
 ;;
  }

  dimension: furthest_step {
    label: "Furthest Funnel Step Reached"

    case: {
      when: {
        sql: ${reached_event_4} = true ;;
        label: "4th"
      }

      when: {
        sql: ${reached_event_3} = true ;;
        label: "3rd"
      }

      when: {
        sql: ${reached_event_2} = true ;;
        label: "2nd"
      }

      when: {
        sql: ${reached_event_1} = true ;;
        label: "1st"
      }

      else: "no"
    }
  }

  measure: count_sessions {
    type: count_distinct
    drill_fields: [detail*]
    sql: ${id} ;;
  }

  measure: count_sessions_event1 {
    label: "Event 1"
    type: count_distinct
    sql: ${id} ;;
    drill_fields: [detail*]

    filters: {
      field: furthest_step
      value: "1st,2nd,3rd,4th"
    }
  }

  measure: count_sessions_event12 {
    label: "Event 2"
    description: "Only includes sessions which also completed event 1"
    type: count_distinct
    sql: ${id} ;;
    drill_fields: [detail*]

    filters: {
      field: furthest_step
      value: "2nd,3rd,4th"
    }
  }

  measure: count_sessions_event123 {
    label: "Event 3"
    description: "Only includes sessions which also completed events 1 and 2"
    type: count_distinct
    sql: ${id} ;;
    drill_fields: [detail*]

    filters: {
      field: furthest_step
      value: "3rd, 4th"
    }
  }

  measure: count_sessions_event1234 {
    label: "Event 4"
    description: "Only includes sessions which also completed events 1, 2 and 3"
    type: count_distinct
    sql: ${id} ;;
    drill_fields: [detail*]

    filters: {
      field: furthest_step
      value: "4th"
    }
  }

  set: detail {
    fields: [id, full_visitor_id, session_start_time]
  }
}

explore: event_funnel {
  hidden:  yes
  label: "Event Funnel"
  view_label: "Event Funnel"
}
