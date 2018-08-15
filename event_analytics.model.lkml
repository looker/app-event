label: "GA360"

include: "/app_event_analytics_config/ga360_config.model"

# include all the views
include: "*.view"

# include all the dashboards

include: "*.dashboard.lookml"

named_value_format: usd_large {
  value_format: "[>=1000000]$0.00,,\"M\";[>=1000]$0.00,\"K\";$0.00"
}

named_value_format: decimal_large {
  value_format: "[>=1000000000]0.0,,,\"B\";[>=1000000]0.0,,\"M\";[>=1000]0.0,\"K\";0.0"
}
