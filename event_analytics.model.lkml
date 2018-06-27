connection: "looker_app"

# include all the views
include: "*.view"

# include all the dashboards

#include: "*.dashboard"

#include: "bounce_rates.dashboard"
#include: "event_analytics_dash_base.dashboard"
#include: "google_analytics_overview.dashboard"
#include: "traffic_engagement_overview.dashboard"
#include: "transactions_conversions_revenue.dashboard"

named_value_format: usd_large {
  value_format: "[>=1000000]$0.00,,\"M\";[>=1000]$0.00,\"K\";$0.00"
}
