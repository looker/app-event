- dashboard: google_analytics_overview
  extends: event_analytics_dash_base
  title: Google Analytics Overview
  embed_style:
    background_color: "#ffffff"
    title_color: "#3a4245"
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - name: What content is performing the best?
    type: text
    title_text: What content is performing the best?
    row: 67
    col: 0
    width: 24
    height: 2
  - name: Where should you acquire your users for Engagement?
    type: text
    title_text: Where should you acquire your users for Engagement?
    subtitle_text: ''
    body_text: Check out the [Traffic Engagement Overview Dashboard]() for more analysis
    row: 14
    col: 0
    width: 24
    height: 3
  - name: Where should you acquire your users for Revenue?
    type: text
    title_text: Where should you acquire your users for Revenue?
    body_text: Check out the [Transaction and Revenue Dashboard]() for more analysis
    row: 43
    col: 0
    width: 24
    height: 2
  - title: Users
    name: Users
    model: event_analytics
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.unique_visitors
    - ga_sessions.visitStart_week
    fill_fields:
    - ga_sessions.visitStart_week
    filters: {}
    sorts:
    - ga_sessions.visitStart_week desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: last_week
      label: Last Week
      expression: "-1* ((offset(${ga_sessions.unique_visitors},1)-${ga_sessions.unique_visitors}))/(offset(${ga_sessions.unique_visitors},1))"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 0
    col: 0
    width: 6
    height: 3
  - title: Returning Users
    name: Returning Users
    model: event_analytics
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.visitStart_week
    - ga_sessions.returning_visitors
    fill_fields:
    - ga_sessions.visitStart_week
    filters: {}
    sorts:
    - ga_sessions.visitStart_week desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: last_week
      label: Last Week
      expression: "-1* ((offset(${ga_sessions.returning_visitors},1)-${ga_sessions.returning_visitors}))/(offset(${ga_sessions.returning_visitors},1))"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 0
    col: 6
    width: 6
    height: 3
  - title: Bounce Rate
    name: Bounce Rate
    model: event_analytics
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.visitStart_week
    - totals.bounce_rate
    fill_fields:
    - ga_sessions.visitStart_week
    filters: {}
    sorts:
    - ga_sessions.visitStart_week desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: last_week
      label: Last Week
      expression: "-1* ((offset(${totals.bounce_rate},1)-${totals.bounce_rate}))/(offset(${totals.bounce_rate},1))"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 0
    col: 18
    width: 6
    height: 3
  - title: Conversion Rate
    name: Conversion Rate
    model: event_analytics
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.visitStart_week
    - totals.transaction_conversion_rate
    fill_fields:
    - ga_sessions.visitStart_week
    filters: {}
    sorts:
    - ga_sessions.visitStart_week desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: last_week
      label: Last Week
      expression: "-1* ((offset(${totals.transaction_conversion_rate},1)-${totals.transaction_conversion_rate}))/(offset(${totals.transaction_conversion_rate},1))"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 3
    col: 6
    width: 6
    height: 3
  - title: Sessions
    name: Sessions
    model: event_analytics
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.visitStart_week
    - ga_sessions.session_count
    fill_fields:
    - ga_sessions.visitStart_week
    filters: {}
    sorts:
    - ga_sessions.visitStart_week desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: last_week
      label: Last Week
      expression: "-1* ((offset(${ga_sessions.session_count},1)-${ga_sessions.session_count}))/(offset(${ga_sessions.session_count},1))"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 0
    col: 12
    width: 6
    height: 3
  - title: Avg Revenue per Transaction
    name: Avg Revenue per Transaction
    model: event_analytics
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.visitStart_week
    - totals.average_revenue_per_transaction
    fill_fields:
    - ga_sessions.visitStart_week
    filters: {}
    sorts:
    - ga_sessions.visitStart_week desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: last_week
      label: Last Week
      expression: "-1* ((offset(${totals.average_revenue_per_transaction},1)-${totals.average_revenue_per_transaction}))/(offset(${totals.average_revenue_per_transaction},1))"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 3
    col: 12
    width: 6
    height: 3
  - title: Average Session Duration
    name: Average Session Duration
    model: event_analytics
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.visitStart_week
    - totals.timeonsite_average_per_session
    fill_fields:
    - ga_sessions.visitStart_week
    filters: {}
    sorts:
    - ga_sessions.visitStart_week desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: last_week
      label: Last Week
      expression: "-1* ((offset(${totals.timeonsite_average_per_session},1)-${totals.timeonsite_average_per_session}))/(offset(${totals.timeonsite_average_per_session},1))"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 3
    col: 0
    width: 6
    height: 3
  - title: Revenue
    name: Revenue
    model: event_analytics
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.visitStart_week
    - totals.transactionRevenue_total
    fill_fields:
    - ga_sessions.visitStart_week
    filters: {}
    sorts:
    - ga_sessions.visitStart_week desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: last_week
      label: Last Week
      expression: "-1* ((offset(${totals.transactionRevenue_total},1)-${totals.transactionRevenue_total}))/(offset(${totals.transactionRevenue_total},1))"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 3
    col: 18
    width: 6
    height: 3
  - title: Last 7 Days
    name: Last 7 Days
    model: event_analytics
    explore: ga_sessions
    type: looker_line
    fields:
    - ga_sessions.visitStart_date
    - ga_sessions.unique_visitors
    - ga_sessions.returning_visitors
    - ga_sessions.session_count
    - totals.timeonsite_average_per_session
    - totals.transaction_conversion_rate
    - totals.transactionRevenue_total
    fill_fields:
    - ga_sessions.visitStart_date
    filters: {}
    sorts:
    - ga_sessions.visitStart_date desc
    limit: 7
    column_limit: 50
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: circle_outline
    interpolation: monotone
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: ga_sessions.unique_visitors
        name: Session Unique Visitors
        axisId: ga_sessions.unique_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1750
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1747
    - label:
      orientation: left
      series:
      - id: ga_sessions.returning_visitors
        name: Session Returning Visitors
        axisId: ga_sessions.returning_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1766
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1763
    - label:
      orientation: left
      series:
      - id: ga_sessions.session_count
        name: Session Session Count
        axisId: ga_sessions.session_count
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1782
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1779
    - label:
      orientation: left
      series:
      - id: totals.timeonsite_average_per_session
        name: Session Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1798
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1795
    - label:
      orientation: left
      series:
      - id: totals.transactionRevenue_total
        name: Session Transaction Revenue Total
        axisId: totals.transactionRevenue_total
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1814
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1811
    - label:
      orientation: right
      series:
      - id: totals.transaction_conversion_rate
        name: Session Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1830
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1827
    colors:
    - "#58A9F5"
    - "#B9E49A"
    - "#FDCB6C"
    - "#F6659A"
    - "#5EC0C4"
    - "#BFBFBF"
    - "#7DC06A"
    - "#D0A997"
    - "#8696B8"
    - "#C5D4B2"
    series_colors: {}
    hidden_series:
    - totals.timeonsite_average_per_session
    - totals.transaction_conversion_rate
    - totals.transactionRevenue_total
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 6
    col: 0
    width: 24
    height: 8
  - title: Engagement by Traffic Source
    name: Engagement by Traffic Source
    model: event_analytics
    explore: ga_sessions
    type: looker_line
    fields:
    - ga_sessions.channelGrouping
    - totals.avg_pageview_per_user
    - ga_sessions.average_sessions_ver_visitor
    - totals.timeonsite_average_per_session
    - ga_sessions.unique_visitors
    filters: {}
    sorts:
    - totals.avg_pageview_per_user desc
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: circle
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      ga_sessions.unique_visitors: column
    y_axes:
    - label:
      orientation: left
      series:
      - id: ga_sessions.unique_visitors
        name: Unique Visitors
        axisId: ga_sessions.unique_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 822
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 819
    - label:
      orientation: left
      series:
      - id: totals.avg_pageview_per_user
        name: Average Pageviews per User
        axisId: totals.avg_pageview_per_user
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 838
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 835
    - label:
      orientation: left
      series:
      - id: ga_sessions.average_sessions_ver_visitor
        name: Average Sessions Ver Visitor
        axisId: ga_sessions.average_sessions_ver_visitor
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 854
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 851
    - label:
      orientation: right
      series:
      - id: totals.timeonsite_average_per_session
        name: Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 870
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 867
    colors:
    - "#F6659A"
    - "#B9E49A"
    - "#FDCB6C"
    - "#58A9F5"
    - "#5EC0C4"
    - "#BFBFBF"
    - "#7DC06A"
    - "#D0A997"
    - "#8696B8"
    - "#C5D4B2"
    series_colors: {}
    hidden_series:
    - totals.avg_pageview_per_user
    - ga_sessions.average_sessions_ver_visitor
    x_axis_label_rotation: -45
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 17
    col: 0
    width: 8
    height: 13
  - title: Engagement by Medium
    name: Engagement by Medium
    model: event_analytics
    explore: ga_sessions
    type: looker_line
    fields:
    - totals.avg_pageview_per_user
    - ga_sessions.average_sessions_ver_visitor
    - totals.timeonsite_average_per_session
    - ga_sessions.unique_visitors
    - trafficSource.medium
    filters: {}
    sorts:
    - totals.avg_pageview_per_user desc
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: circle
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      ga_sessions.unique_visitors: column
    y_axes:
    - label:
      orientation: left
      series:
      - id: ga_sessions.unique_visitors
        name: Unique Visitors
        axisId: ga_sessions.unique_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 953
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 950
    - label:
      orientation: left
      series:
      - id: totals.avg_pageview_per_user
        name: Average Pageviews per User
        axisId: totals.avg_pageview_per_user
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 969
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 966
    - label:
      orientation: left
      series:
      - id: ga_sessions.average_sessions_ver_visitor
        name: Average Sessions Ver Visitor
        axisId: ga_sessions.average_sessions_ver_visitor
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 985
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 982
    - label:
      orientation: right
      series:
      - id: totals.timeonsite_average_per_session
        name: Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1001
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 998
    colors:
    - "#F6659A"
    - "#B9E49A"
    - "#FDCB6C"
    - "#58A9F5"
    - "#5EC0C4"
    - "#BFBFBF"
    - "#7DC06A"
    - "#D0A997"
    - "#8696B8"
    - "#C5D4B2"
    series_colors: {}
    hidden_series:
    - totals.avg_pageview_per_user
    - ga_sessions.average_sessions_ver_visitor
    x_axis_label_rotation: -45
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 17
    col: 8
    width: 8
    height: 13
  - title: Engagement by Referrals
    name: Engagement by Referrals
    model: event_analytics
    explore: ga_sessions
    type: looker_line
    fields:
    - trafficSource.referralPath
    - totals.avg_pageview_per_user
    - ga_sessions.average_sessions_ver_visitor
    - totals.timeonsite_average_per_session
    - ga_sessions.unique_visitors
    filters:
      trafficSource.referralPath: "-NULL"
    sorts:
    - ga_sessions.unique_visitors desc
    limit: 7
    column_limit: 50
    dynamic_fields:
    - table_calculation: referral_path
      label: Referral Path
      expression: substring(${trafficSource.referralPath},0,11)
      value_format:
      value_format_name:
      _kind_hint: dimension
      _type_hint: string
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: circle
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      ga_sessions.unique_visitors: column
    y_axes:
    - label:
      orientation: left
      series:
      - id: ga_sessions.unique_visitors
        name: Unique Visitors
        axisId: ga_sessions.unique_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1093
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1090
    - label:
      orientation: left
      series:
      - id: totals.avg_pageview_per_user
        name: Average Pageviews per User
        axisId: totals.avg_pageview_per_user
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1109
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1106
    - label:
      orientation: left
      series:
      - id: ga_sessions.average_sessions_ver_visitor
        name: Average Sessions Ver Visitor
        axisId: ga_sessions.average_sessions_ver_visitor
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1125
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1122
    - label:
      orientation: right
      series:
      - id: totals.timeonsite_average_per_session
        name: Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1141
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1138
    colors:
    - "#F6659A"
    - "#B9E49A"
    - "#FDCB6C"
    - "#58A9F5"
    - "#5EC0C4"
    - "#BFBFBF"
    - "#7DC06A"
    - "#D0A997"
    - "#8696B8"
    - "#C5D4B2"
    series_colors: {}
    hidden_series:
    - totals.avg_pageview_per_user
    - ga_sessions.average_sessions_ver_visitor
    hidden_fields:
    - trafficSource.referralPath
    x_axis_label_rotation: -45
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 17
    col: 16
    width: 8
    height: 13
  - title: User Drop-off Rate
    name: User Drop-off Rate
    model: event_analytics
    explore: ga_sessions
    type: looker_column
    fields:
    - user_session_facts.days_active
    - ga_sessions.unique_visitors
    filters: {}
    sorts:
    - user_session_facts.days_active
    limit: 7
    column_limit: 5
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}
    show_dropoff: true
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: user_session_facts.count
        name: User Session Facts Count
        axisId: user_session_facts.count
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 361
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 358
    series_colors: {}
    note_state: collapsed
    note_display: above
    colors:
    - "#58A9F5"
    - "#FF666C"
    - "#B9E49A"
    - "#FDCB6C"
    - "#F6659A"
    - "#5EC0C4"
    - "#BFBFBF"
    - "#7DC06A"
    - "#D0A997"
    - "#8696B8"
    - "#C5D4B2"
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 30
    col: 12
    width: 12
    height: 13
  - title: When are Your Users Coming?
    name: When are Your Users Coming?
    model: event_analytics
    explore: ga_sessions
    type: table
    fields:
    - ga_sessions.visitStart_hour_of_day
    - ga_sessions.visitStart_day_of_week
    - ga_sessions.session_count
    pivots:
    - ga_sessions.visitStart_day_of_week
    fill_fields:
    - ga_sessions.visitStart_hour_of_day
    - ga_sessions.visitStart_day_of_week
    filters: {}
    sorts:
    - ga_sessions.visitStart_day_of_week 0
    - ga_sessions.visitStart_hour_of_day
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Custom
        colors:
        - "#fff"
        - "#58A9F5"
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 617
      bold: false
      italic: false
      strikethrough: false
      fields:
      - ga_sessions.session_count
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 612
    series_labels:
      ga_sessions.visitStart_hour_of_day: Hour of Day
      ga_sessions.visitStart_day_of_week: Day of Week
    note_state: collapsed
    note_display: above
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 30
    col: 0
    width: 12
    height: 13
  - title: Users & Revenue by Medium
    name: Users & Revenue by Medium
    model: event_analytics
    explore: ga_sessions
    type: looker_line
    fields:
    - trafficSource.medium
    - totals.transaction_conversion_rate
    - totals.average_revenue_per_user
    - totals.transactionRevenue_total
    - ga_sessions.unique_visitors
    filters: {}
    sorts:
    - ga_sessions.unique_visitors desc
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: circle
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      ga_sessions.unique_visitors: column
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: totals.transaction_conversion_rate
        name: Session Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1357
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1354
    - label:
      orientation: left
      series:
      - id: ga_sessions.unique_visitors
        name: Session Unique Visitors
        axisId: ga_sessions.unique_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1373
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1370
    - label:
      orientation: left
      series:
      - id: totals.average_revenue_per_user
        name: Session Average Revenue per User
        axisId: totals.average_revenue_per_user
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1389
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1386
    - label:
      orientation: right
      series:
      - id: totals.transactionRevenue_total
        name: Session Transaction Revenue Total
        axisId: totals.transactionRevenue_total
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1405
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1402
    colors:
    - "#F6659A"
    - "#B9E49A"
    - "#FDCB6C"
    - "#58A9F5"
    - "#5EC0C4"
    - "#BFBFBF"
    - "#7DC06A"
    - "#D0A997"
    - "#8696B8"
    - "#C5D4B2"
    series_colors: {}
    hidden_series:
    - totals.transaction_conversion_rate
    - totals.average_revenue_per_user
    x_axis_label_rotation: -45
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 45
    col: 8
    width: 8
    height: 13
  - title: Users & Revenue by Channel
    name: Users & Revenue by Channel
    model: event_analytics
    explore: ga_sessions
    type: looker_line
    fields:
    - ga_sessions.channelGrouping
    - totals.transaction_conversion_rate
    - totals.average_revenue_per_user
    - totals.transactionRevenue_total
    - ga_sessions.unique_visitors
    filters: {}
    sorts:
    - ga_sessions.unique_visitors desc
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: circle
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      ga_sessions.unique_visitors: column
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: totals.transaction_conversion_rate
        name: Session Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1226
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1223
    - label:
      orientation: left
      series:
      - id: ga_sessions.unique_visitors
        name: Session Unique Visitors
        axisId: ga_sessions.unique_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1242
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1239
    - label:
      orientation: left
      series:
      - id: totals.average_revenue_per_user
        name: Session Average Revenue per User
        axisId: totals.average_revenue_per_user
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1258
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1255
    - label:
      orientation: right
      series:
      - id: totals.transactionRevenue_total
        name: Session Transaction Revenue Total
        axisId: totals.transactionRevenue_total
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1274
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1271
    colors:
    - "#F6659A"
    - "#B9E49A"
    - "#FDCB6C"
    - "#58A9F5"
    - "#5EC0C4"
    - "#BFBFBF"
    - "#7DC06A"
    - "#D0A997"
    - "#8696B8"
    - "#C5D4B2"
    series_colors: {}
    hidden_series:
    - totals.transaction_conversion_rate
    - totals.average_revenue_per_user
    x_axis_label_rotation: -45
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 45
    col: 0
    width: 8
    height: 13
  - title: Count of Users by LTV
    name: Count of Users by LTV
    model: event_analytics
    explore: ga_sessions
    type: looker_column
    fields:
    - user_session_facts.lifetime_transaction_revenue_tier
    - ga_sessions.channelGrouping
    - ga_sessions.unique_visitors
    pivots:
    - ga_sessions.channelGrouping
    filters:
      user_session_facts.lifetime_transaction_revenue_tier: "-Below 0"
    sorts:
    - user_session_facts.lifetime_transaction_revenue_tier
    - ga_sessions.channelGrouping
    limit: 7
    column_limit: 50
    stacking: normal
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: circle
    interpolation: monotone
    series_types: {}
    show_dropoff: false
    y_axes:
    - label: Count of Users
      orientation: left
      series:
      - id: user_session_facts.count
        name: User Session Facts
        axisId: user_session_facts.count
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 445
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 442
    series_colors: {}
    colors:
    - "#58A9F5"
    - "#FF666C"
    - "#B9E49A"
    - "#FDCB6C"
    - "#F6659A"
    - "#5EC0C4"
    - "#BFBFBF"
    - "#7DC06A"
    - "#D0A997"
    - "#8696B8"
    - "#C5D4B2"
    hidden_fields:
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 58
    col: 0
    width: 12
    height: 9
  - title: User Retention
    name: User Retention
    model: event_analytics
    explore: ga_sessions
    type: table
    fields:
    - ga_sessions.session_count
    - user_session_facts.weeks_active
    - user_session_facts.first_start_date_week
    pivots:
    - user_session_facts.weeks_active
    filters:
      user_session_facts.first_start_date_week: 2017/06/14 to 2017/08/01
    sorts:
    - user_session_facts.first_start_date_week
    - user_session_facts.weeks_active 0
    limit: 7
    column_limit: 7
    query_timezone: America/Los_Angeles
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Custom
        colors:
        - "#FFFFFF"
        - "#58A9F5"
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 535
      bold: false
      italic: false
      strikethrough: false
      fields:
      - ga_sessions.session_count
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 530
    note_state: collapsed
    note_display: above
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 58
    col: 12
    width: 12
    height: 9
  - title: Users & Revenue by Referrals
    name: Users & Revenue by Referrals
    model: event_analytics
    explore: ga_sessions
    type: looker_line
    fields:
    - trafficSource.referralPath
    - totals.transaction_conversion_rate
    - totals.average_revenue_per_user
    - totals.transactionRevenue_total
    - ga_sessions.unique_visitors
    filters:
      trafficSource.referralPath: "-NULL"
    sorts:
    - ga_sessions.unique_visitors desc
    limit: 7
    column_limit: 50
    dynamic_fields:
    - table_calculation: referral_path
      label: Referral Path
      expression: substring(${trafficSource.referralPath},0,11)
      value_format:
      value_format_name:
      _kind_hint: dimension
      _type_hint: string
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: circle
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      ga_sessions.unique_visitors: column
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: totals.transaction_conversion_rate
        name: Session Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1497
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1494
    - label:
      orientation: left
      series:
      - id: ga_sessions.unique_visitors
        name: Session Unique Visitors
        axisId: ga_sessions.unique_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1513
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1510
    - label:
      orientation: left
      series:
      - id: totals.average_revenue_per_user
        name: Session Average Revenue per User
        axisId: totals.average_revenue_per_user
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1529
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1526
    - label:
      orientation: right
      series:
      - id: totals.transactionRevenue_total
        name: Session Transaction Revenue Total
        axisId: totals.transactionRevenue_total
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1545
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1542
    colors:
    - "#F6659A"
    - "#B9E49A"
    - "#FDCB6C"
    - "#58A9F5"
    - "#5EC0C4"
    - "#BFBFBF"
    - "#7DC06A"
    - "#D0A997"
    - "#8696B8"
    - "#C5D4B2"
    series_colors: {}
    hidden_series:
    - totals.transaction_conversion_rate
    - totals.average_revenue_per_user
    hidden_fields:
    - trafficSource.referralPath
    x_axis_label_rotation: -45
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 45
    col: 16
    width: 8
    height: 13
  - title: Top Pages Full Detail
    name: Top Pages Full Detail
    model: event_analytics
    explore: ga_sessions
    type: table
    fields:
    - first_page.pageTitle
    - ga_sessions.total_visitors
    - ga_sessions.unique_visitors
    - ga_sessions.session_count
    - totals.bounce_rate
    - totals.page_views_session
    - totals.timeonsite_average_per_session
    - totals.transaction_conversion_rate
    - totals.average_revenue_per_transaction
    - totals.transactionRevenue_total
    filters: {}
    sorts:
    - ga_sessions.total_visitors desc
    limit: 10
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: circle
    interpolation: monotone
    series_types: {}
    y_axes:
    - label:
      orientation: top
      series:
      - id: totals.transactionRevenue_total
        name: Transaction Revenue Total
        axisId: totals.transactionRevenue_total
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 699
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 696
    - label: ''
      orientation: bottom
      series:
      - id: totals.transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 715
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 712
    - label:
      orientation: bottom
      series:
      - id: ga_sessions.unique_visitors
        name: Unique Visitors
        axisId: ga_sessions.unique_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 731
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 728
    - label:
      orientation: bottom
      series:
      - id: totals.average_revenue_per_user
        name: Average Revenue per User
        axisId: totals.average_revenue_per_user
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 747
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 744
    colors:
    - 'palette: Fuchsia to Green'
    series_colors:
      ga_sessions.unique_visitors: "#286f0f"
    hidden_series:
    - totals.transaction_conversion_rate
    - totals.average_revenue_per_user
    x_axis_label_rotation: -45
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 69
    col: 10
    width: 14
    height: 13
  - title: Top Pages
    name: Top Pages
    model: event_analytics
    explore: ga_sessions
    type: looker_bar
    fields:
    - first_page.pageTitle
    - totals.transaction_conversion_rate
    - totals.timeonsite_average_per_session
    - ga_sessions.unique_visitors
    filters: {}
    sorts:
    - ga_sessions.unique_visitors desc
    limit: 10
    column_limit: 50
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: circle
    interpolation: monotone
    series_types:
      totals.transactionRevenue_total: line
      totals.transaction_conversion_rate: line
      totals.average_revenue_per_user: line
      totals.timeonsite_average_per_session: line
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: totals.transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1632
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1629
    - label:
      orientation: bottom
      series:
      - id: ga_sessions.unique_visitors
        name: Unique Visitors
        axisId: ga_sessions.unique_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1648
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: custom
      tickDensityCustom: '3'
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1645
    - label: ''
      orientation: bottom
      series:
      - id: totals.timeonsite_average_per_session
        name: Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1664
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1661
    colors:
    - "#B9E49A"
    - "#FDCB6C"
    - "#58A9F5"
    - "#5EC0C4"
    - "#BFBFBF"
    - "#7DC06A"
    - "#D0A997"
    - "#8696B8"
    - "#C5D4B2"
    series_colors: {}
    hidden_series:
    - totals.transaction_conversion_rate
    - totals.timeonsite_average_per_session
    x_axis_label_rotation: -45
    listen:
      Date: ga_sessions.partition_date
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 69
    col: 0
    width: 10
    height: 13
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: 12 months
    allow_multiple_values: true
    required: false
    model: event_analytics
    explore: ga_sessions
    listens_to_filters: []
    field: ga_sessions.partition_date
  - name: Campaign
    title: Campaign
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: event_analytics
    explore: ga_sessions
    listens_to_filters: []
    field: trafficSource.campaign
  - name: First Time Visitor
    title: First Time Visitor
    type: field_filter
    default_value: 'Yes'
    allow_multiple_values: true
    required: false
    model: event_analytics
    explore: ga_sessions
    listens_to_filters: []
    field: ga_sessions.first_time_visitor
  - name: Country
    title: Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: event_analytics
    explore: ga_sessions
    listens_to_filters: []
    field: geoNetwork.country
