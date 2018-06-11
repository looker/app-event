include: "/aea_event_adapter/ga_block.view"
include: "/aea_event_adapter/ga_sessions.view"
include: "/app_event_analytics_config/ga360_config.view"

include: "date_base.view"
include: "period_base.view"

explore: period_fact {
  hidden: yes
  from: period_fact
  label: "This Period"
  view_label: "This Period"
  join: last_fact {
    from: period_fact
    view_label: "Prior Period"
    sql_on:
      ${period_fact.date_last_period} = ${last_fact.date_period}
      AND ${period_fact.date_day_of_period} = ${last_fact.date_day_of_period} ;;
    relationship: one_to_one
  }
}

view: period_fact {
 extends: [ga_sessions, date_base, period_base]

  dimension: visitorId {
    hidden:  yes
  }

  dimension: visitnumber {}

  dimension:  first_time_visitor {}

  dimension: visitnumbertier {}

  dimension: visitId {
    hidden:  yes
  }
  dimension: fullVisitorId {
    hidden:  yes
  }
  dimension: visitStartSeconds {}

  ## referencing partition_date for demo purposes only. Switch this dimension to reference visistStartSeconds
  dimension_group: visitStart {
    timeframes: [date,day_of_week,fiscal_quarter,week,month,year,month_name,month_num,week_of_year,time_of_day, hour_of_day]
    label: "Visit Start"
    type: time
    sql: TIMESTAMP_SECONDS(${TABLE}.visitStarttime) ;;
  }
  ## use visit or hit start time instead
  dimension: date {
    hidden: yes
  }
  dimension: socialEngagementType {}

  measure: session_count {
    type: count
    drill_fields: [fullVisitorId, visitnumber, session_count, totals.transactions_count, totals.transactionRevenue_total]
  }
  measure: unique_visitors {
    type: count_distinct
    sql: ${fullVisitorId} ;;
    drill_fields: [fullVisitorId, visitnumber, session_count, totals.hits, totals.page_views, totals.timeonsite]
  }

  measure: average_sessions_ver_visitor {
    type: number
    sql: 1.0 * (${session_count}/NULLIF(${unique_visitors},0))  ;;
    value_format_name: decimal_2
    drill_fields: [fullVisitorId, visitnumber, session_count, totals.hits, totals.page_views, totals.timeonsite]
  }

  measure: total_visitors {
    type: count
    drill_fields: [fullVisitorId, visitnumber, session_count, totals.hits, totals.page_views, totals.timeonsite]
  }

  measure: first_time_visitors {
    label: "First Time Visitors"
    type: count
    filters: {
      field: visitnumber
      value: "1"
    }
  }

  measure: returning_visitors {
    label: "Returning Visitors"
    type: count
    filters: {
      field: visitnumber
      value: "<> 1"
    }
  }

  dimension: channelGrouping {label: "Channel Grouping"}

  # subrecords
  dimension: geoNetwork {hidden: yes}
  dimension: totals {hidden:yes}
  dimension: trafficSource {hidden:yes}
  dimension: device {hidden:yes}
  dimension: customDimensions {hidden:yes}
  dimension: hits {hidden:yes}
  dimension: hits_eventInfo {hidden:yes}

  dimension: _date {
    type: date_raw
  }

  dimension: id {
    primary_key: yes
    hidden: yes
    sql: CONCAT(CAST(${fullVisitorId} AS STRING), '|', COALESCE(CAST(${visitId} AS STRING),''));;
  }

}
