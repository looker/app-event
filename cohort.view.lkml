
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
  }

  measure: session_count {
    type: sum
    sql:  ${TABLE}.session_count ;;
  }

  measure: bounces {
    type: sum
    sql:  ${TABLE}.bounces ;;
  }

  measure: bounce_rate {
    type: number
    sql: ${bounces} / ${session_count};;
  }

  measure: hits_total {
    type: sum
    sql: ${TABLE}.hits_total ;;
  }

  measure: pageviews_total {
    type: sum
    sql: ${TABLE}.page_views_total ;;
  }

  measure: timeonsite_total {
    type: sum
    sql: ${TABLE}.time_on_site ;;
  }

  measure: transactions_count {
    type: sum
    sql: ${TABLE}.transactions_count ;;
  }
}

explore: cohort {}
