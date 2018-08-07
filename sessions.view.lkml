include: "/aea_event_adapter/ga_sessions.view"

include: "date_base.view"
include: "period_base.view"
include: "event_base.view"

explore: ga_sessions {
  extends: [ga_sessions_block]
}

view: ga_sessions {
  extends: [ga_sessions_adapter, date_base, period_base, event_base]

  dimension: _date {
    sql: ${partition_date} ;;
  }
}
