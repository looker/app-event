include: "date_base.view"
include: "period_base.view"
include: "/app_event_analytics_config/ga360_config.view"


view: event_funnel {
  extends: [date_base, period_base, ga360_config]
  derived_table: {
    sql: SELECT CONCAT(CAST(sessions.fullVisitorId AS STRING), '|', COALESCE(CAST(sessions.visitId AS STRING),'')) as id
        , sessions.fullVisitorId as full_visitor_id
        , TIMESTAMP_SECONDS(sessions.visitStarttime) AS session_start
        , MIN(
            CASE WHEN
              {% condition ga_sessions.filter_1 %} hits_eventInfo.eventCategory {% endcondition %}
              THEN TIMESTAMP_MILLIS(UNIX_MILLIS(TIMESTAMP_SECONDS(sessions.visitStarttime)) + hits.time)
              ELSE NULL END
            ) AS event_1
        , MIN(
            CASE WHEN
              {% condition ga_sessions.event_2 %} hits_eventInfo.eventCategory {% endcondition %}
              THEN TIMESTAMP_MILLIS(UNIX_MILLIS(TIMESTAMP_SECONDS(sessions.visitStarttime)) + hits.time)
              ELSE NULL END
            ) AS event_2_first
        , MAX(
            CASE WHEN
              {% condition ga_sessions.event_2 %} hits_eventInfo.eventCategory {% endcondition %}
              THEN TIMESTAMP_MILLIS(UNIX_MILLIS(TIMESTAMP_SECONDS(sessions.visitStarttime)) + hits.time)
              ELSE NULL END
            ) AS event_2_last
        , MIN(
            CASE WHEN
              {% condition ga_sessions.event_3 %} hits_eventInfo.eventCategory {% endcondition %}
              THEN TIMESTAMP_MILLIS(UNIX_MILLIS(TIMESTAMP_SECONDS(sessions.visitStarttime)) + hits.time)
              ELSE NULL END
            ) AS event_3_first
        , MAX(
            CASE WHEN
              {% condition ga_sessions.event_3 %} hits_eventInfo.eventCategory {% endcondition %}
              THEN TIMESTAMP_MILLIS(UNIX_MILLIS(TIMESTAMP_SECONDS(sessions.visitStarttime)) + hits.time)
              ELSE NULL END
            ) AS event_3_last
        , MIN(
            CASE WHEN
              {% condition ga_sessions.event_4 %} hits_eventInfo.eventCategory {% endcondition %}
              THEN TIMESTAMP_MILLIS(UNIX_MILLIS(TIMESTAMP_SECONDS(sessions.visitStarttime)) + hits.time)
              ELSE NULL END
            ) AS event_4_first
        , MAX(
            CASE WHEN
              {% condition ga_sessions.event_4 %} hits_eventInfo.eventCategory {% endcondition %}
              THEN TIMESTAMP_MILLIS(UNIX_MILLIS(TIMESTAMP_SECONDS(sessions.visitStarttime)) + hits.time)
              ELSE NULL END
            ) AS event_4_last

      FROM {{ ga_sessions.looker_data_schema._sql }} AS sessions
        LEFT JOIN UNNEST(sessions.hits) as hits
        LEFT JOIN UNNEST([hits.eventInfo]) as hits_eventInfo
      GROUP BY 1,2,3
       ;;
  }


  filter: filter_1 {
    label: "Event 1"
    type: string
    suggest_dimension: hits_eventInfo.eventCategory
    suggest_explore: ga_sessions
  }

  filter: event_2 {
    type: string
    suggest_dimension: hits_eventInfo.eventCategory
    suggest_explore: ga_sessions
  }

  filter: event_3 {
    type: string
    suggest_dimension: hits_eventInfo.eventCategory
    suggest_explore: ga_sessions
  }

  filter: event_4 {
    type: string
    suggest_dimension: hits_eventInfo.eventCategory
    suggest_explore: ga_sessions
  }


  dimension: id {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.id ;;
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
    sql:  ${TABLE}.session_start ;;
  }

  dimension_group: event_1 {
    description: "First occurrence of event 1"
    type: time
    convert_tz: no
    timeframes: [time]
    hidden: yes
    sql: ${TABLE}.event_1 ;;
  }

  dimension_group: event_2_first {
    description: "First occurrence of event 2"
    type: time
    convert_tz: no
    timeframes: [time]
    hidden: yes
    sql: ${TABLE}.event_2_first ;;
  }

  dimension_group: event_2_last {
    description: "Last occurrence of event 2"
    type: time
    convert_tz: no
    timeframes: [time]
    hidden: yes
    sql: ${TABLE}.event_2_last ;;
  }

  dimension_group: event_3_first {
    description: "First occurrence of event 3"
    type: time
    convert_tz: no
    timeframes: [time]
    hidden: yes
    sql: ${TABLE}.event_3_first ;;
  }

  dimension_group: event_3_last {
    description: "Last occurrence of event 3"
    type: time
    convert_tz: no
    timeframes: [time]
    hidden: yes
    sql: ${TABLE}.event_3_last ;;
  }

  dimension_group: event_4_first {
    description: "First occurrence of event 4"
    type: time
    convert_tz: no
    timeframes: [time]
    hidden: yes
    sql: ${TABLE}.event_4_first ;;
  }

  dimension_group: event_4_last {
    description: "Last occurrence of event 4"
    type: time
    convert_tz: no
    timeframes: [time]
    hidden: yes
    sql: ${TABLE}.event_4_last ;;
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
    sql: (${event_1_time} IS NOT NULL)
      ;;
  }

  dimension: reached_event_2 {
    hidden: yes
    type: yesno
    sql: (${event_1_time} IS NOT NULL AND ${event_2_first_time} IS NOT NULL AND ${event_1_time} < ${event_2_last_time})
      ;;
  }

  dimension: reached_event_3 {
    hidden: yes
    type: yesno
    sql: (${event_1_time} IS NOT NULL AND ${event_2_last_time} IS NOT NULL AND ${event_3_last_time}  IS NOT NULL
      AND ${event_1_time} < ${event_2_last_time} AND ${event_1_time} < ${event_3_last_time} AND ${event_2_first_time} < ${event_3_last_time})
       ;;
  }

  dimension: reached_event_4 {
    hidden: yes
    type: yesno
    sql: (${event_1_time} IS NOT NULL AND ${event_2_last_time} IS NOT NULL AND ${event_3_last_time}  IS NOT NULL AND ${event_4_last_time} IS NOT NULL
      AND ${event_1_time} < ${event_2_last_time} AND ${event_1_time} < ${event_3_last_time} AND ${event_1_time} < ${event_4_last_time} AND ${event_2_first_time} < ${event_3_last_time} AND ${event_2_first_time} < ${event_4_last_time} AND ${event_3_first_time} < ${event_4_last_time})
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

  dimension: _date {
    sql: ${session_start_date} ;;
    hidden:  yes
  }

  dimension: date {
    hidden:  yes
  }

  dimension: date_end_of_period {
    hidden:  yes
  }

  dimension: date_last_period {
    hidden:  yes
  }

  set: detail {
    fields: [id, full_visitor_id, session_start_time]
  }
  }

explore: event_funnel {
  hidden:  yes
  from: event_funnel
  view_name: ga_sessions
  label: "Event Funnel"
  view_label: "Event Funnel"
}
