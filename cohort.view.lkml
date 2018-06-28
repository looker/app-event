
view: cohort {
  derived_table: {
    sql:  WITH user_session_facts AS (SELECT
        ga_sessions.fullVisitorId AS ga_sessions_fullvisitorid,
        min(TIMESTAMP_SECONDS(visitStartTime)) as first_start_date,
        max(TIMESTAMP_SECONDS(visitStartTime)) as latest_start_date,
        COUNT(*) AS lifetime_sessions,
        COALESCE(SUM((totals.transactionRevenue/1000000) ), 0) AS lifetime_transaction_revenue,
        COALESCE(SUM(totals.transactions ), 0) AS lifetime_transaction_count,
        (date_diff(max(date(TIMESTAMP_SECONDS(visitStartTime))), min(date(TIMESTAMP_SECONDS(visitStartTime))), day)+1) as days_active,
        (date_diff(max(date(TIMESTAMP_SECONDS(visitStartTime))), min(date(TIMESTAMP_SECONDS(visitStartTime))), week)+1) as weeks_active,
        date_diff(CURRENT_DATE, min(date(TIMESTAMP_SECONDS(visitStartTime))), day) as days_since_first_session
      FROM `looker-ga360.69266980.ga_sessions_*` as ga_sessions
      GROUP BY 1
       )
      SELECT
        CAST(PARSE_DATE('%Y%m%d', date) AS DATE) AS date,
        user_session_facts.weeks_active  AS weeks_active,
        CAST(user_session_facts.first_start_date AS DATE) AS first_start_date,
        COUNT(*) AS session_count,
        1.0 * (COALESCE(SUM(totals.bounces ), 0))  AS bounces,
        COALESCE(SUM(totals.hits ), 0) AS hits_total,
        COALESCE(SUM(totals.pageviews ), 0) AS page_views_total,
        COALESCE(SUM(totals.timeonsite ), 0) AS time_on_site,
        COALESCE(SUM(totals.transactions ), 0) AS transactions_count
      FROM `looker-ga360.69266980.ga_sessions_*`  AS ga_sessions
      LEFT JOIN UNNEST([ga_sessions.totals]) as totals
      LEFT JOIN user_session_facts ON user_session_facts.ga_sessions_fullvisitorid = ga_sessions.fullVisitorId
      GROUP BY 1,2,3;;
      }

  dimension: weeks_active {
    type: number
  }

  dimension: date {
    type: date
    sql: TIMESTAMP(${TABLE}.first_start_date);;
  }

  dimension: first_start_date_week {
    type: date_week
    sql: ${TABLE}.first_start_date ;;
    can_filter: no
  }

  dimension: session_count {
    sql:  ${TABLE}.session_count ;;
    value_format_name: decimal_0
    hidden:  yes
  }

  dimension: bounces {
    sql:  ${TABLE}.bounces ;;
    value_format_name: decimal_0
    hidden:  yes
  }

  dimension: hits_total {
    sql: ${TABLE}.hits_total ;;
    hidden:  yes
  }

  dimension: pageviews_total {
    sql: ${TABLE}.page_views_total ;;
    value_format_name: decimal_0
    hidden:  yes
  }

  dimension: timeonsite_total {
    label: "Time On Site Total"
    sql: ${TABLE}.time_on_site ;;
    hidden:  yes
  }

  measure: transactions_count {
    hidden:  yes
    type: sum
    sql: ${TABLE}.transactions_count ;;
    value_format_name: decimal_0
  }

  parameter: measure_picker {
    type: string
    allowed_value: { value: "Time On Site Total" }
    allowed_value: { value: "Sessions Count" }
    allowed_value: { value: "Bounces" }
    allowed_value: { value: "Page Views" }
    allowed_value: { value: "Total Hits" }
  }

  measure: selected_measure {
    type: sum
    sql: CASE WHEN {% parameter measure_picker %} = 'Time On Site Total' THEN ${timeonsite_total}
        WHEN {% parameter measure_picker %} = 'Sessions Count' THEN ${session_count}
        WHEN {% parameter measure_picker %} = 'Page Views Total' THEN ${pageviews_total}
        WHEN {% parameter measure_picker %} = 'Bounces' THEN ${bounces}
        WHEN {% parameter measure_picker %} = 'Total Hits' THEN ${hits_total}
        ELSE 0
      END ;;
    value_format_name: decimal_0
  }

}

explore: cohort {}
