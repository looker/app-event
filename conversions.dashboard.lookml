- dashboard: conversions
  title: Conversions
  layout: newspaper
  embed_style:
    background_color: "#ffffff"
    title_color: "#3a4245"
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - name: Where are your conversions coming from?
    type: text
    title_text: Where are your conversions coming from?
    row: 16
    col: 0
    width: 24
    height: 2
  - name: Which pages and keywords bring the most conversions?
    type: text
    title_text: Which pages and keywords bring the most conversions?
    row: 34
    col: 0
    width: 24
    height: 3
  - title: Conversions
    name: Conversions
    model: event_analytics
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.date_period
    - ga_sessions.session_count
    - totals.timeonsite_average_per_session
    - ga_sessions.unique_visitors
    - ga_sessions.returning_visitors
    - totals.transaction_conversion_rate
    - totals.bounce_rate
    - totals.transactions_count
    filters:
      geoNetwork.country: ''
      ga_sessions.date_period_comparison_period: 'Yes'
    sorts:
    - ga_sessions.date_period desc
    limit: 2
    column_limit: 50
    dynamic_fields:
    - table_calculation: sessions
      label: Sessions
      expression: "(${ga_sessions.session_count} - offset(${ga_sessions.session_count},\
        \ 1)) / offset(${ga_sessions.session_count}, 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: avg_duration
      label: Avg Duration
      expression: "(${totals.timeonsite_average_per_session} - offset(${totals.timeonsite_average_per_session},\
        \ 1)) / offset(${totals.timeonsite_average_per_session}, 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: users
      label: Users
      expression: "(${ga_sessions.unique_visitors} - offset(${ga_sessions.unique_visitors},\
        \ 1)) / offset(${ga_sessions.unique_visitors}, 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: returning_users
      label: Returning Users
      expression: "(${ga_sessions.returning_visitors} - offset(${ga_sessions.returning_visitors},\
        \ 1)) / offset(${ga_sessions.returning_visitors}, 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: conversion_rate
      label: Conversion Rate
      expression: "(${totals.transaction_conversion_rate} - offset(${totals.transaction_conversion_rate},\
        \ 1)) / offset(${totals.transaction_conversion_rate}, 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: bounce_rate
      label: Bounce Rate
      expression: "(${totals.bounce_rate} - offset(${totals.bounce_rate}, 1)) / offset(${totals.bounce_rate},\
        \ 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_transactions
      label: Total Transactions
      expression: "(${totals.transactions_count} - offset(${totals.transactions_count},\
        \ 1)) / offset(${totals.transactions_count}, 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: Conversions
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
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
    series_types: {}
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: ga_sessions.unique_visitors
        name: Unique Visitors
        axisId: ga_sessions.unique_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1351
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1348
    - label:
      orientation: left
      series:
      - id: ga_sessions.returning_visitors
        name: Returning Visitors
        axisId: ga_sessions.returning_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1363
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1360
    - label:
      orientation: left
      series:
      - id: ga_sessions.session_count
        name: Session Count
        axisId: ga_sessions.session_count
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1375
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1372
    - label:
      orientation: left
      series:
      - id: totals.timeonsite_average_per_session
        name: Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1387
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1384
    - label: ''
      orientation: left
      series:
      - id: percent_new_visitors
        name: Percent New Visitors
        axisId: percent_new_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1399
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1396
    - label:
      orientation: right
      series:
      - id: totals.transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1410
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1407
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
    - ga_sessions.unique_visitors
    - totals.transaction_conversion_rate
    hidden_fields:
    - totals.transaction_conversion_rate
    - totals.bounce_rate
    - conversion_rate
    - bounce_rate
    - ga_sessions.session_count
    - sessions
    - totals.timeonsite_average_per_session
    - avg_duration
    - ga_sessions.returning_visitors
    - ga_sessions.unique_visitors
    - users
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time User: ga_sessions.first_time_visitor
    row: 3
    col: 6
    width: 6
    height: 3
  - title: Users
    name: Users
    model: event_analytics
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.date_period
    - ga_sessions.session_count
    - totals.timeonsite_average_per_session
    - ga_sessions.unique_visitors
    - ga_sessions.returning_visitors
    - totals.transaction_conversion_rate
    - totals.bounce_rate
    filters:
      geoNetwork.country: ''
      ga_sessions.date_period_comparison_period: 'Yes'
    sorts:
    - ga_sessions.date_period desc
    limit: 2
    column_limit: 50
    dynamic_fields:
    - table_calculation: sessions
      label: Sessions
      expression: "(${ga_sessions.session_count} - offset(${ga_sessions.session_count},\
        \ 1)) / offset(${ga_sessions.session_count}, 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: avg_duration
      label: Avg Duration
      expression: "(${totals.timeonsite_average_per_session} - offset(${totals.timeonsite_average_per_session},\
        \ 1)) / offset(${totals.timeonsite_average_per_session}, 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: users
      label: Users
      expression: "(${ga_sessions.unique_visitors} - offset(${ga_sessions.unique_visitors},\
        \ 1)) / offset(${ga_sessions.unique_visitors}, 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: returning_users
      label: Returning Users
      expression: "(${ga_sessions.returning_visitors} - offset(${ga_sessions.returning_visitors},\
        \ 1)) / offset(${ga_sessions.returning_visitors}, 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: conversion_rate
      label: Conversion Rate
      expression: "(${totals.transaction_conversion_rate} - offset(${totals.transaction_conversion_rate},\
        \ 1)) / offset(${totals.transaction_conversion_rate}, 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: bounce_rate
      label: Bounce Rate
      expression: "(${totals.bounce_rate} - offset(${totals.bounce_rate}, 1)) / offset(${totals.bounce_rate},\
        \ 1)"
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
    show_comparison_label: false
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
    series_types: {}
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: ga_sessions.unique_visitors
        name: Unique Visitors
        axisId: ga_sessions.unique_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1351
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1348
    - label:
      orientation: left
      series:
      - id: ga_sessions.returning_visitors
        name: Returning Visitors
        axisId: ga_sessions.returning_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1363
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1360
    - label:
      orientation: left
      series:
      - id: ga_sessions.session_count
        name: Session Count
        axisId: ga_sessions.session_count
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1375
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1372
    - label:
      orientation: left
      series:
      - id: totals.timeonsite_average_per_session
        name: Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1387
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1384
    - label: ''
      orientation: left
      series:
      - id: percent_new_visitors
        name: Percent New Visitors
        axisId: percent_new_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1399
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1396
    - label:
      orientation: right
      series:
      - id: totals.transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1410
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1407
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
    - ga_sessions.unique_visitors
    - totals.transaction_conversion_rate
    hidden_fields:
    - totals.transaction_conversion_rate
    - totals.bounce_rate
    - conversion_rate
    - bounce_rate
    - ga_sessions.session_count
    - sessions
    - totals.timeonsite_average_per_session
    - avg_duration
    - ga_sessions.returning_visitors
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time User: ga_sessions.first_time_visitor
    row: 3
    col: 0
    width: 6
    height: 3
  - title: Conversion Rate
    name: Conversion Rate
    model: event_analytics
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.date_period
    - ga_sessions.session_count
    - totals.timeonsite_average_per_session
    - ga_sessions.unique_visitors
    - ga_sessions.returning_visitors
    - totals.transaction_conversion_rate
    - totals.bounce_rate
    filters:
      geoNetwork.country: ''
      ga_sessions.date_period_comparison_period: 'Yes'
    sorts:
    - ga_sessions.date_period desc
    limit: 2
    column_limit: 50
    dynamic_fields:
    - table_calculation: sessions
      label: Sessions
      expression: "(${ga_sessions.session_count} - offset(${ga_sessions.session_count},\
        \ 1)) / offset(${ga_sessions.session_count}, 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: avg_duration
      label: Avg Duration
      expression: "(${totals.timeonsite_average_per_session} - offset(${totals.timeonsite_average_per_session},\
        \ 1)) / offset(${totals.timeonsite_average_per_session}, 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: users
      label: Users
      expression: "(${ga_sessions.unique_visitors} - offset(${ga_sessions.unique_visitors},\
        \ 1)) / offset(${ga_sessions.unique_visitors}, 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: returning_users
      label: Returning Users
      expression: "(${ga_sessions.returning_visitors} - offset(${ga_sessions.returning_visitors},\
        \ 1)) / offset(${ga_sessions.returning_visitors}, 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: conversion_rate
      label: Conversion Rate
      expression: "(${totals.transaction_conversion_rate} - offset(${totals.transaction_conversion_rate},\
        \ 1)) / offset(${totals.transaction_conversion_rate}, 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: bounce_rate
      label: Bounce Rate
      expression: "(${totals.bounce_rate} - offset(${totals.bounce_rate}, 1)) / offset(${totals.bounce_rate},\
        \ 1)"
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
    show_comparison_label: false
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
    series_types: {}
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: ga_sessions.unique_visitors
        name: Unique Visitors
        axisId: ga_sessions.unique_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1351
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1348
    - label:
      orientation: left
      series:
      - id: ga_sessions.returning_visitors
        name: Returning Visitors
        axisId: ga_sessions.returning_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1363
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1360
    - label:
      orientation: left
      series:
      - id: ga_sessions.session_count
        name: Session Count
        axisId: ga_sessions.session_count
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1375
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1372
    - label:
      orientation: left
      series:
      - id: totals.timeonsite_average_per_session
        name: Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1387
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1384
    - label: ''
      orientation: left
      series:
      - id: percent_new_visitors
        name: Percent New Visitors
        axisId: percent_new_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1399
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1396
    - label:
      orientation: right
      series:
      - id: totals.transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1410
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1407
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
    - ga_sessions.unique_visitors
    - totals.transaction_conversion_rate
    hidden_fields:
    - totals.bounce_rate
    - bounce_rate
    - ga_sessions.session_count
    - sessions
    - totals.timeonsite_average_per_session
    - avg_duration
    - ga_sessions.unique_visitors
    - users
    - ga_sessions.returning_visitors
    - returning_users
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time User: ga_sessions.first_time_visitor
    row: 3
    col: 12
    width: 6
    height: 3
  - title: Top Medium
    name: Top Medium
    model: event_analytics
    explore: ga_sessions
    type: looker_bar
    fields:
    - trafficSource.medium
    - ga_sessions.total_visitors
    - totals.transactions_count
    - totals.transaction_conversion_rate
    - totals.transactionRevenue_total
    - totals.average_revenue_per_transaction
    filters:
      trafficSource.keyword: "-NULL"
      totals.transactionRevenue_total: ">0"
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - totals.transaction_conversion_rate desc
    limit: 10
    column_limit: 50
    dynamic_fields:
    - table_calculation: medium
      label: Medium
      expression: substring(${trafficSource.medium},0,16)
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
    point_style: circle
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    query_timezone: America/Los_Angeles
    show_null_points: true
    interpolation: monotone
    series_types: {}
    y_axis_labels: []
    hidden_series:
    - ga_sessions.total_visitors
    - totals.transactions_count
    - totals.transactionRevenue_total
    - totals.average_revenue_per_transaction
    y_axis_orientation:
    - left
    - right
    hidden_fields:
    - trafficSource.medium
    series_colors:
      totals.transaction_conversion_rate: "#5EC0C4"
    series_labels:
      ga_sessions.total_visitors: Visitors
      totals.transactions_count: Conversions
      totals.transactionRevenue_total: Total Value
      percent_of_visitors_w_transactions: "% Converting Visitors"
      totals.transaction_conversion_rate: Conversion Rate
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: percent_of_visitors_w_transactions
        name: Percent of Visitors w/ Transactions
        axisId: percent_of_visitors_w_transactions
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 793
      - id: ga_sessions.total_visitors
        name: Total Visitors
        axisId: ga_sessions.total_visitors
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 796
      - id: totals.transactions_count
        name: Transactions Count
        axisId: totals.transactions_count
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 799
      - id: totals.transactionRevenue_total
        name: Transaction Revenue Total
        axisId: totals.transactionRevenue_total
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 802
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/conversions.dashboard.lookml
      __LINE_NUM: 790
    colors:
    - "#B9E49A"
    - "#FF666C"
    - "#58A9F5"
    - "#FDCB6C"
    - "#F6659A"
    - "#5EC0C4"
    - "#BFBFBF"
    - "#7DC06A"
    - "#D0A997"
    - "#8696B8"
    - "#C5D4B2"
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time User: ga_sessions.first_time_visitor
    row: 18
    col: 0
    width: 8
    height: 9
  - title: Top Referrers
    name: Top Referrers
    model: event_analytics
    explore: ga_sessions
    type: looker_bar
    fields:
    - ga_sessions.total_visitors
    - totals.transactions_count
    - totals.transaction_conversion_rate
    - totals.transactionRevenue_total
    - totals.average_revenue_per_transaction
    - trafficSource.source
    filters:
      trafficSource.keyword: "-NULL"
      totals.transactionRevenue_total: ">0"
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - totals.transaction_conversion_rate desc
    limit: 10
    column_limit: 50
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: circle
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    query_timezone: America/Los_Angeles
    show_null_points: true
    interpolation: monotone
    series_types: {}
    y_axis_labels: []
    hidden_series:
    - ga_sessions.total_visitors
    - totals.transactions_count
    - totals.transactionRevenue_total
    - totals.average_revenue_per_transaction
    y_axis_orientation:
    - left
    - right
    hidden_fields:
    series_colors:
      totals.transaction_conversion_rate: "#5EC0C4"
    series_labels:
      ga_sessions.total_visitors: Visitors
      totals.transactions_count: Conversions
      totals.transactionRevenue_total: Total Value
      percent_of_visitors_w_transactions: "% Converting Visitors"
      totals.transaction_conversion_rate: Conversion Rate
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: percent_of_visitors_w_transactions
        name: Percent of Visitors w/ Transactions
        axisId: percent_of_visitors_w_transactions
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 904
      - id: ga_sessions.total_visitors
        name: Total Visitors
        axisId: ga_sessions.total_visitors
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 907
      - id: totals.transactions_count
        name: Transactions Count
        axisId: totals.transactions_count
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 910
      - id: totals.transactionRevenue_total
        name: Transaction Revenue Total
        axisId: totals.transactionRevenue_total
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 913
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/conversions.dashboard.lookml
      __LINE_NUM: 901
    colors:
    - "#B9E49A"
    - "#FF666C"
    - "#58A9F5"
    - "#FDCB6C"
    - "#F6659A"
    - "#5EC0C4"
    - "#BFBFBF"
    - "#7DC06A"
    - "#D0A997"
    - "#8696B8"
    - "#C5D4B2"
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time User: ga_sessions.first_time_visitor
    row: 18
    col: 8
    width: 8
    height: 9
  - title: Conversions Over Time
    name: Conversions Over Time
    model: event_analytics
    explore: ga_sessions
    type: looker_line
    fields:
    - ga_sessions.total_visitors
    - totals.transactions_count
    - ga_sessions.visitStart_date
    - totals.transaction_conversion_rate
    - totals.average_revenue_per_transaction
    filters:
      trafficSource.keyword: "-NULL"
      totals.transactionRevenue_total: ">0"
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - ga_sessions.visitStart_date desc
    limit: 14
    column_limit: 50
    dynamic_fields:
    - table_calculation: percent_of_visitors_w_transactions
      label: Percent of Visitors w/ Transactions
      expression: "${totals.transactions_count}/${ga_sessions.total_visitors}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: circle
    interpolation: monotone
    query_timezone: America/Los_Angeles
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    series_types: {}
    y_axis_labels: []
    hidden_series:
    - totals.transactions_count
    - totals.transaction_conversion_rate
    - percent_of_visitors_w_transactions
    y_axis_orientation:
    - left
    - right
    hidden_fields:
    series_colors: {}
    series_labels:
      totals.transactions_count: Conversions
      ga_sessions.total_visitors: Visitors
      totals.average_revenue_per_transaction: Avg Conversion Value
      percent_of_visitors_w_transactions: "% Converting Visitors"
    label_color: []
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: percent_of_visitors_w_transactions
        name: Percent of Visitors w/ Transactions
        axisId: percent_of_visitors_w_transactions
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 453
      __FILE: app_event_analytics/conversions.dashboard.lookml
      __LINE_NUM: 441
    - label:
      maxValue:
      minValue:
      orientation: left
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: ga_sessions.total_visitors
        name: Total Visitors
        axisId: ga_sessions.total_visitors
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 472
      __FILE: app_event_analytics/conversions.dashboard.lookml
      __LINE_NUM: 460
    - label:
      orientation: left
      series:
      - id: totals.transactions_count
        name: Transactions Count
        axisId: totals.transactions_count
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 482
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/conversions.dashboard.lookml
      __LINE_NUM: 479
    - label:
      orientation: left
      series:
      - id: totals.transactionRevenue_total
        name: Transaction Revenue Total
        axisId: totals.transactionRevenue_total
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 501
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/conversions.dashboard.lookml
      __LINE_NUM: 498
    - label:
      orientation: left
      series:
      - id: totals.transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 520
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/conversions.dashboard.lookml
      __LINE_NUM: 517
    - label:
      orientation: left
      series:
      - id: totals.average_revenue_per_transaction
        name: Average Revenue per Transaction
        axisId: totals.average_revenue_per_transaction
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 539
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/conversions.dashboard.lookml
      __LINE_NUM: 536
    colors:
    - "#B9E49A"
    - "#FF666C"
    - "#58A9F5"
    - "#FDCB6C"
    - "#F6659A"
    - "#5EC0C4"
    - "#BFBFBF"
    - "#7DC06A"
    - "#D0A997"
    - "#8696B8"
    - "#C5D4B2"
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time User: ga_sessions.first_time_visitor
    row: 6
    col: 0
    width: 24
    height: 10
  - title: Avg Conversion Value
    name: Avg Conversion Value
    model: event_analytics
    explore: ga_sessions
    type: single_value
    fields:
    - ga_sessions.date_period
    - ga_sessions.session_count
    - totals.timeonsite_average_per_session
    - ga_sessions.unique_visitors
    - ga_sessions.returning_visitors
    - totals.transaction_conversion_rate
    - totals.bounce_rate
    - totals.average_revenue_per_transaction
    filters:
      geoNetwork.country: ''
      ga_sessions.date_period_comparison_period: 'Yes'
    sorts:
    - ga_sessions.date_period desc
    limit: 2
    column_limit: 50
    dynamic_fields:
    - table_calculation: sessions
      label: Sessions
      expression: "(${ga_sessions.session_count} - offset(${ga_sessions.session_count},\
        \ 1)) / offset(${ga_sessions.session_count}, 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: avg_duration
      label: Avg Duration
      expression: "(${totals.timeonsite_average_per_session} - offset(${totals.timeonsite_average_per_session},\
        \ 1)) / offset(${totals.timeonsite_average_per_session}, 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: users
      label: Users
      expression: "(${ga_sessions.unique_visitors} - offset(${ga_sessions.unique_visitors},\
        \ 1)) / offset(${ga_sessions.unique_visitors}, 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: returning_users
      label: Returning Users
      expression: "(${ga_sessions.returning_visitors} - offset(${ga_sessions.returning_visitors},\
        \ 1)) / offset(${ga_sessions.returning_visitors}, 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: conversion_rate
      label: Conversion Rate
      expression: "(${totals.transaction_conversion_rate} - offset(${totals.transaction_conversion_rate},\
        \ 1)) / offset(${totals.transaction_conversion_rate}, 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: bounce_rate
      label: Bounce Rate
      expression: "(${totals.bounce_rate} - offset(${totals.bounce_rate}, 1)) / offset(${totals.bounce_rate},\
        \ 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: avg_conversion_value
      label: Avg Conversion Value
      expression: "(${totals.average_revenue_per_transaction} - offset(${totals.average_revenue_per_transaction},\
        \ 1)) / offset(${totals.average_revenue_per_transaction}, 1)"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: Avg Conversion Value
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
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
    series_types: {}
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: ga_sessions.unique_visitors
        name: Unique Visitors
        axisId: ga_sessions.unique_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1351
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1348
    - label:
      orientation: left
      series:
      - id: ga_sessions.returning_visitors
        name: Returning Visitors
        axisId: ga_sessions.returning_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1363
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1360
    - label:
      orientation: left
      series:
      - id: ga_sessions.session_count
        name: Session Count
        axisId: ga_sessions.session_count
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1375
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1372
    - label:
      orientation: left
      series:
      - id: totals.timeonsite_average_per_session
        name: Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1387
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1384
    - label: ''
      orientation: left
      series:
      - id: percent_new_visitors
        name: Percent New Visitors
        axisId: percent_new_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1399
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1396
    - label:
      orientation: right
      series:
      - id: totals.transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1410
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1407
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
    - ga_sessions.unique_visitors
    - totals.transaction_conversion_rate
    hidden_fields:
    - totals.bounce_rate
    - bounce_rate
    - ga_sessions.session_count
    - sessions
    - totals.timeonsite_average_per_session
    - avg_duration
    - ga_sessions.unique_visitors
    - users
    - ga_sessions.returning_visitors
    - returning_users
    - conversion_rate
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time User: ga_sessions.first_time_visitor
    row: 3
    col: 18
    width: 6
    height: 3
  - title: Conversions by Geo
    name: Conversions by Geo
    model: event_analytics
    explore: ga_sessions
    type: looker_map
    fields:
    - geoNetwork.country
    - totals.transactions_count
    filters:
      trafficSource.keyword: "-NULL"
      totals.transactionRevenue_total: ">0"
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - totals.transactions_count desc
    limit: 500
    column_limit: 50
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    value_labels: labels
    label_type: labPer
    show_value_labels: true
    font_size: 12
    stacking: ''
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: circle
    limit_displayed_rows: false
    y_axis_combined: false
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
    query_timezone: America/Los_Angeles
    show_null_points: true
    interpolation: monotone
    series_types: {}
    y_axis_labels: []
    hidden_series: []
    y_axis_orientation:
    - left
    - right
    hidden_fields:
    series_colors:
      'true': "#58A9F5"
      'false': "#FDCB6C"
    series_labels:
      'false': Desktop
      'true': Mobile
    y_axes:
    - label: Transaction Revenue
      orientation: top
      series:
      - id: total_transaction_revenue
        name: Total Transaction Revenue
        axisId: total_transaction_revenue
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 1282
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/conversions.dashboard.lookml
      __LINE_NUM: 1279
    - label:
      orientation: top
      series:
      - id: average_transaction_revenue
        name: Average Transaction Revenue
        axisId: average_transaction_revenue
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 1301
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/conversions.dashboard.lookml
      __LINE_NUM: 1298
    - label: ''
      orientation: bottom
      series:
      - id: percent_of_visitors_w_transactions
        name: Percent of Visitors w/ Transactions
        axisId: percent_of_visitors_w_transactions
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 1320
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/conversions.dashboard.lookml
      __LINE_NUM: 1317
    colors:
    - "#B9E49A"
    - "#FF666C"
    - "#58A9F5"
    - "#FDCB6C"
    - "#F6659A"
    - "#5EC0C4"
    - "#BFBFBF"
    - "#7DC06A"
    - "#D0A997"
    - "#8696B8"
    - "#C5D4B2"
    map_latitude: 46.292866664344295
    map_longitude: 14.942779541015627
    map_zoom: 2
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time User: ga_sessions.first_time_visitor
    row: 27
    col: 0
    width: 16
    height: 7
  - title: Top Channels
    name: Top Channels
    model: event_analytics
    explore: ga_sessions
    type: looker_bar
    fields:
    - ga_sessions.total_visitors
    - totals.transactions_count
    - totals.transaction_conversion_rate
    - totals.transactionRevenue_total
    - totals.average_revenue_per_transaction
    - ga_sessions.channelGrouping
    filters:
      trafficSource.keyword: "-NULL"
      totals.transactionRevenue_total: ">0"
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - totals.transaction_conversion_rate desc
    limit: 10
    column_limit: 50
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: circle
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    query_timezone: America/Los_Angeles
    show_null_points: true
    interpolation: monotone
    series_types: {}
    y_axis_labels: []
    hidden_series:
    - ga_sessions.total_visitors
    - totals.transactions_count
    - totals.transactionRevenue_total
    - totals.average_revenue_per_transaction
    y_axis_orientation:
    - left
    - right
    hidden_fields:
    series_colors:
      totals.transaction_conversion_rate: "#5EC0C4"
    series_labels:
      ga_sessions.total_visitors: Visitors
      totals.transactions_count: Conversions
      totals.transactionRevenue_total: Total Value
      percent_of_visitors_w_transactions: "% Converting Visitors"
      totals.transaction_conversion_rate: Conversion Rate
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: percent_of_visitors_w_transactions
        name: Percent of Visitors w/ Transactions
        axisId: percent_of_visitors_w_transactions
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 1015
      - id: ga_sessions.total_visitors
        name: Total Visitors
        axisId: ga_sessions.total_visitors
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 1018
      - id: totals.transactions_count
        name: Transactions Count
        axisId: totals.transactions_count
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 1021
      - id: totals.transactionRevenue_total
        name: Transaction Revenue Total
        axisId: totals.transactionRevenue_total
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 1024
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/conversions.dashboard.lookml
      __LINE_NUM: 1012
    colors:
    - "#B9E49A"
    - "#FF666C"
    - "#58A9F5"
    - "#FDCB6C"
    - "#F6659A"
    - "#5EC0C4"
    - "#BFBFBF"
    - "#7DC06A"
    - "#D0A997"
    - "#8696B8"
    - "#C5D4B2"
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time User: ga_sessions.first_time_visitor
    row: 18
    col: 16
    width: 8
    height: 9
  - title: Conversions by Device
    name: Conversions by Device
    model: event_analytics
    explore: ga_sessions
    type: looker_pie
    fields:
    - device.isMobile
    - totals.transactions_count
    filters:
      trafficSource.keyword: "-NULL"
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - totals.transactions_count desc
    limit: 10
    column_limit: 50
    value_labels: labels
    label_type: labPer
    show_value_labels: true
    font_size: 12
    stacking: ''
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: circle
    limit_displayed_rows: false
    y_axis_combined: false
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
    query_timezone: America/Los_Angeles
    show_null_points: true
    interpolation: monotone
    series_types: {}
    y_axis_labels: []
    hidden_series: []
    y_axis_orientation:
    - left
    - right
    hidden_fields:
    series_colors:
      'true': "#FDCB6C"
      'false': "#5EC0C4"
    series_labels:
      'false': Desktop
      'true': Mobile
    y_axes:
    - label: Transaction Revenue
      orientation: top
      series:
      - id: total_transaction_revenue
        name: Total Transaction Revenue
        axisId: total_transaction_revenue
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 1125
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/conversions.dashboard.lookml
      __LINE_NUM: 1122
    - label:
      orientation: top
      series:
      - id: average_transaction_revenue
        name: Average Transaction Revenue
        axisId: average_transaction_revenue
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 1144
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/conversions.dashboard.lookml
      __LINE_NUM: 1141
    - label: ''
      orientation: bottom
      series:
      - id: percent_of_visitors_w_transactions
        name: Percent of Visitors w/ Transactions
        axisId: percent_of_visitors_w_transactions
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 1163
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/conversions.dashboard.lookml
      __LINE_NUM: 1160
    colors:
    - "#B9E49A"
    - "#FF666C"
    - "#58A9F5"
    - "#FDCB6C"
    - "#F6659A"
    - "#5EC0C4"
    - "#BFBFBF"
    - "#7DC06A"
    - "#D0A997"
    - "#8696B8"
    - "#C5D4B2"
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time User: ga_sessions.first_time_visitor
    row: 27
    col: 16
    width: 8
    height: 7
  - title: Top Converting Landing Pages
    name: Top Converting Landing Pages
    model: event_analytics
    explore: ga_sessions
    type: table
    fields:
    - first_page.pageTitle
    - ga_sessions.session_count
    - totals.transactions_count
    - totals.transaction_conversion_rate
    filters:
      totals.transactionRevenue_total: ">0"
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - totals.transactions_count desc
    limit: 25
    column_limit: 10
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
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: circle
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    query_timezone: America/Los_Angeles
    show_null_points: true
    interpolation: monotone
    series_types: {}
    y_axis_labels: []
    hidden_series:
    - ga_sessions.total_visitors
    - totals.transactionRevenue_total
    - totals.average_revenue_per_transaction
    y_axis_orientation:
    - left
    - right
    hidden_fields:
    series_colors:
      totals.transaction_conversion_rate: "#5EC0C4"
    series_labels:
      ga_sessions.total_visitors: Visitors
      totals.transactions_count: Conversions
      totals.transactionRevenue_total: Total Value
      percent_of_visitors_w_transactions: "% Converting Visitors"
      totals.transaction_conversion_rate: Conversion Rate
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: ga_sessions.total_visitors
        name: Visitors
        axisId: ga_sessions.total_visitors
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 1441
      - id: totals.transactions_count
        name: Conversions
        axisId: totals.transactions_count
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 1444
      - id: totals.transactionRevenue_total
        name: Total Value
        axisId: totals.transactionRevenue_total
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 1447
      - id: totals.average_revenue_per_transaction
        name: Average Revenue per Transaction
        axisId: totals.average_revenue_per_transaction
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 1450
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/conversions.dashboard.lookml
      __LINE_NUM: 1438
    - label:
      orientation: bottom
      series:
      - id: totals.transaction_conversion_rate
        name: Conversion Rate
        axisId: totals.transaction_conversion_rate
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 1465
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/conversions.dashboard.lookml
      __LINE_NUM: 1462
    colors:
    - "#B9E49A"
    - "#FF666C"
    - "#58A9F5"
    - "#FDCB6C"
    - "#F6659A"
    - "#5EC0C4"
    - "#BFBFBF"
    - "#7DC06A"
    - "#D0A997"
    - "#8696B8"
    - "#C5D4B2"
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Custom
        colors:
        - "#FFFFFF"
        - "#5EC0C4"
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 1495
      bold: false
      italic: false
      strikethrough: false
      fields:
      - totals.transactions_count
      __FILE: app_event_analytics/conversions.dashboard.lookml
      __LINE_NUM: 1490
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Custom
        colors:
        - "#FFFFFF"
        - "#5EC0C4"
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 1509
      bold: false
      italic: false
      strikethrough: false
      fields:
      - totals.transaction_conversion_rate
      __FILE: app_event_analytics/conversions.dashboard.lookml
      __LINE_NUM: 1504
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time User: ga_sessions.first_time_visitor
    row: 37
    col: 0
    width: 13
    height: 12
  - title: Top Converting Keywords
    name: Top Converting Keywords
    model: event_analytics
    explore: ga_sessions
    type: table
    fields:
    - ga_sessions.session_count
    - totals.transactions_count
    - totals.transaction_conversion_rate
    - trafficSource.keyword
    filters:
      totals.transactionRevenue_total: ">0"
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - totals.transactions_count desc
    limit: 25
    column_limit: 10
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
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: circle
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    query_timezone: America/Los_Angeles
    show_null_points: true
    interpolation: monotone
    series_types: {}
    y_axis_labels: []
    hidden_series:
    - ga_sessions.total_visitors
    - totals.transactionRevenue_total
    - totals.average_revenue_per_transaction
    y_axis_orientation:
    - left
    - right
    hidden_fields:
    series_colors:
      totals.transaction_conversion_rate: "#5EC0C4"
    series_labels:
      ga_sessions.total_visitors: Visitors
      totals.transactions_count: Conversions
      totals.transactionRevenue_total: Total Value
      percent_of_visitors_w_transactions: "% Converting Visitors"
      totals.transaction_conversion_rate: Conversion Rate
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: ga_sessions.total_visitors
        name: Visitors
        axisId: ga_sessions.total_visitors
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 1601
      - id: totals.transactions_count
        name: Conversions
        axisId: totals.transactions_count
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 1604
      - id: totals.transactionRevenue_total
        name: Total Value
        axisId: totals.transactionRevenue_total
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 1607
      - id: totals.average_revenue_per_transaction
        name: Average Revenue per Transaction
        axisId: totals.average_revenue_per_transaction
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 1610
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/conversions.dashboard.lookml
      __LINE_NUM: 1598
    - label:
      orientation: bottom
      series:
      - id: totals.transaction_conversion_rate
        name: Conversion Rate
        axisId: totals.transaction_conversion_rate
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 1625
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/conversions.dashboard.lookml
      __LINE_NUM: 1622
    colors:
    - "#B9E49A"
    - "#FF666C"
    - "#58A9F5"
    - "#FDCB6C"
    - "#F6659A"
    - "#5EC0C4"
    - "#BFBFBF"
    - "#7DC06A"
    - "#D0A997"
    - "#8696B8"
    - "#C5D4B2"
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Custom
        colors:
        - "#FFFFFF"
        - "#5EC0C4"
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 1655
      bold: false
      italic: false
      strikethrough: false
      fields:
      - totals.transactions_count
      __FILE: app_event_analytics/conversions.dashboard.lookml
      __LINE_NUM: 1650
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Custom
        colors:
        - "#FFFFFF"
        - "#5EC0C4"
        __FILE: app_event_analytics/conversions.dashboard.lookml
        __LINE_NUM: 1669
      bold: false
      italic: false
      strikethrough: false
      fields:
      - totals.transaction_conversion_rate
      __FILE: app_event_analytics/conversions.dashboard.lookml
      __LINE_NUM: 1664
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time User: ga_sessions.first_time_visitor
    row: 37
    col: 13
    width: 11
    height: 12
  filters:
  - name: Period
    title: Period
    type: field_filter
    default_value: 7 day
    allow_multiple_values: true
    required: false
    model: event_analytics
    explore: ga_sessions
    listens_to_filters: []
    field: ga_sessions.period
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
  - name: First Time User
    title: First Time User
    type: string_filter
    default_value: ''
    allow_multiple_values: true
    required: false
  - name: Property
    title: Property
    type: string_filter
    default_value: All Websites
    allow_multiple_values: true
    required: false
