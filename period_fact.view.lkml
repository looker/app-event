include: "/aea_event_adapter/ga_block.view"
include: "/aea_event_adapter/ga_sessions.view"
include: "/app_event_analytics_config/ga360_config.view"

include: "date_base.view"
include: "period_base.view"

explore: period_fact {
  hidden: yes
  from: period_fact
  view_name: ga_sessions
  label: "This Period"
  view_label: "This Period"
  join: last_fact {
    from: period_fact
    view_label: "Prior Period"
    sql_on:
      ${ga_sessions.date_last_period} = ${last_fact.date_period}
      AND ${ga_sessions.date_day_of_period} = ${last_fact.date_day_of_period}
      AND ${ga_sessions.channel_grouping} = ${last_fact.channel_grouping}
      AND ${ga_sessions.social_engagement_type} = ${last_fact.social_engagement_type};;
    relationship: one_to_one
  }
}

view: period_fact {
  extends: [date_base, period_base, ga360_config]
  derived_table: {
    sql:
      SELECT
        CONCAT(CAST(ga_sessions.channelGrouping AS STRING), '|', CAST(ga_sessions.socialEngagementType AS STRING), '|', CAST(PARSE_DATE('%Y%m%d', date) AS STRING), '|', CAST(trafficSource.campaign AS STRING), '|', CAST(geoNetwork.country AS STRING)) AS id,
        ga_sessions.channelGrouping AS channel_grouping,
        ga_sessions.socialEngagementType AS social_engagement_type,
        trafficSource.campaign AS campaign,
        geoNetwork.country AS country,
        PARSE_DATE('%Y%m%d', date) AS _date,
        COUNT(CASE WHEN (ga_sessions.visitnumber = 1) THEN 1 ELSE NULL END) as first_time_visitors,
        COUNT(CASE WHEN (ga_sessions.visitnumber <> 1) THEN 1 ELSE NULL END) AS returning_visitors,
        COALESCE(SUM(totals.newVisits ), 0) AS new_visits,
        COUNT(DISTINCT ga_sessions.fullVisitorId ) AS unique_visitors,
        COUNT(ga_sessions.fullVisitorId ) AS total_visitors,
        1.0 * (COALESCE(SUM(totals.bounces ), 0))  AS bounces,
        COALESCE(SUM(totals.hits ), 0) AS hits,
        COALESCE(SUM(totals.pageviews ), 0) AS page_views,
        COUNT(*) AS session_count,
        COALESCE(SUM(totals.timeOnScreen ), 0) AS time_on_screen,
        COALESCE(SUM(totals.timeonsite ), 0) AS time_on_site,
        COALESCE(SUM(totals.visits ), 0) AS visits,
        COALESCE(SUM(totals.transactions ), 0) AS transactions,
        COALESCE(SUM(totals.screenViews ), 0) AS totals_screenviews,
        COALESCE(SUM((totals.transactionRevenue/1000000) ), 0) AS transaction_revenue
      FROM {{ ga_sessions.looker_data_schema._sql }} AS ga_sessions
      LEFT JOIN UNNEST([ga_sessions.totals]) as totals
      LEFT JOIN UNNEST([ga_sessions.trafficSource]) as trafficSource
      LEFT JOIN UNNEST([ga_sessions.geoNetwork]) as geoNetwork
      GROUP BY 1,2,3,4,5,6;;
      persist_for: "24 hours"

  }
  dimension: social_engagement_type {}

  dimension: channel_grouping {}

  dimension: campaign {}

  dimension: country {}

  dimension: id {
    type: string
    primary_key: yes
    sql: CONCAT(CAST(${channel_grouping} AS STRING), '|', CAST(${social_engagement_type} AS STRING), '|', CAST(${_date} AS STRING), '|', CAST(${country} AS STRING), '|', CAST(${campaign} AS STRING));;
  }

  dimension: _date {
    hidden: yes
    type: date_raw
  }

  measure: session_count {
    type: sum
    sql: ${TABLE}.session_count ;;
    value_format_name: decimal_large
  }

  measure: total_visits {
    type: sum
    sql: ${TABLE}.visits ;;
    value_format_name: decimal_large
  }

  measure: transaction_revenue_total {
    type: sum
    sql: ${TABLE}.transaction_revenue ;;
    value_format_name: usd_large
  }

  measure: revenue_per_transaction {
    type: number
    sql: ${transaction_revenue_total} / NULLIF(${total_transactions}, 0);;
    value_format_name: usd
  }

  measure: converions_rate {
    type: number
    sql:  ${total_transactions} / NULLIF(${session_count}, 0) ;;
    value_format_name: decimal_1
  }

  measure: new_visits {
    type: sum
    sql: ${TABLE}.new_visits ;;
    value_format_name: decimal_0
  }

  measure: total_transactions {
    type: sum
    sql: ${TABLE}.transactions ;;
    value_format_name: decimal_large
  }

  measure: hits {
    type: sum
    sql: ${TABLE}.hits ;;
    value_format_name: decimal_large
  }

  measure: totals_screenviews {
    type: sum
    sql: ${TABLE}.totals_screenviews ;;
    value_format_name: decimal_large
  }

  measure: first_time_visitors {
    type: sum
    sql: ${TABLE}.first_time_visitors ;;
    value_format_name: decimal_large
  }

  measure: returning_visitors {
    type: sum
    sql: ${TABLE}.returning_visitors ;;
    value_format_name: decimal_large
  }

  measure: unique_visitors {
    type: sum
    sql: ${TABLE}.unique_visitors ;;
    value_format_name: decimal_large
  }

  measure: total_visitors {
    type: sum
    sql: ${TABLE}.total_visitors ;;
    value_format_name: decimal_large
  }

  measure: bounces {
    type: sum
    sql: ${TABLE}.bounces ;;
    value_format_name: decimal_large
  }

  measure: bounce_rate {
    type: number
    sql: ${bounces} / NULLIF(${session_count}, 0);;
    value_format_name: percent_2
  }

  measure: total_page_views {
    type: sum
    sql: ${TABLE}.page_views ;;
    value_format_name: decimal_large
  }

  measure: total_time_on_screen{
    type: sum
    sql: ${TABLE}.time_on_screen ;;
  }

  measure: total_time_on_site{
    type: sum
    sql: ${TABLE}.time_on_site ;;
  }

  measure: hits_average_per_session {
    type: number
    sql: ${hits}/NULLIF(${session_count},0) ;;
    value_format_name: decimal_1
  }

  measure: page_views_per_session {
    type: number
    sql: ${total_page_views}/NULLIF(${session_count}, 0) ;;
    value_format_name: decimal_2
  }

  measure: avg_sessions_per_visitor {
    type: number
    sql: ${session_count}/NULLIF(${unique_visitors}, 0) ;;
    value_format_name: decimal_2
  }

  measure: average_page_views_per_user {
    type: number
    sql: ${total_page_views}/NULLIF(${unique_visitors}, 0) ;;
    value_format_name: decimal_1
  }

  measure: time_on_site_average_per_session {
    type: number
    sql: ${total_time_on_site}/NULLIF(${session_count}, 0) ;;
    value_format_name: decimal_1
  }


}
