- dashboard: conversions
  title: Conversions
  layout: newspaper
  embed_style:
    background_color: "#ffffff"
    title_color: "#3a4245"
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - name: Avg Conversion Value
    title: Avg Conversion Value
    model: event_analytics
    explore: period_fact
    type: single_value
    fields:
    - ga_sessions.unique_visitors
    - last_fact.unique_visitors
    - ga_sessions.returning_visitors
    - last_fact.returning_visitors
    - ga_sessions.session_count
    - last_fact.session_count
    - ga_sessions.transaction_revenue_total
    - last_fact.transaction_revenue_total
    - ga_sessions.revenue_per_transaction
    - last_fact.revenue_per_transaction
    filters:
      ga_sessions.date_period_latest: 'Yes'
      ga_sessions.country: ''
      ga_sessions.campaign: ''
      ga_sessions.period: day
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: visitors_change
      label: Visitors % Change
      expression: "(${ga_sessions.unique_visitors} - ${last_fact.unique_visitors})\
        \ / ${last_fact.unique_visitors}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: returning_visitors_change
      label: Returning Visitors % Change
      expression: "(${ga_sessions.returning_visitors} - ${last_fact.returning_visitors})\
        \ / ${last_fact.returning_visitors}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: session_count_change
      label: Session Count % Change
      expression: "(${ga_sessions.session_count} - ${last_fact.session_count}) / ${last_fact.session_count}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_revenue_change
      label: Total Revenue % Change
      expression: "(${ga_sessions.transaction_revenue_total} - ${last_fact.transaction_revenue_total})\
        \ / ${last_fact.transaction_revenue_total}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: revenue_per_transaction_chnage
      label: Revenue Per Transaction Chnage
      expression: "${ga_sessions.revenue_per_transaction} - ${last_fact.revenue_per_transaction}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    hidden_fields:
    - last_fact.unique_visitors
    - ga_sessions.returning_visitors
    - returning_visitors_change
    - last_fact.returning_visitors
    - visitors_change
    - last_fact.session_count
    - ga_sessions.unique_visitors
    - last_fact.transaction_revenue_total
    - ga_sessions.session_count
    - session_count_change
    - ga_sessions.transaction_revenue_total
    - last_fact.revenue_per_transaction
    - total_revenue_change
    series_types: {}
    single_value_title: Avg Conversion Value
    row: 0
    col: 18
    width: 6
    height: 3
  - name: Conversion Rate
    title: Conversion Rate
    model: event_analytics
    explore: period_fact
    type: single_value
    fields:
    - ga_sessions.unique_visitors
    - last_fact.unique_visitors
    - ga_sessions.returning_visitors
    - last_fact.returning_visitors
    - ga_sessions.session_count
    - last_fact.session_count
    - ga_sessions.transaction_revenue_total
    - last_fact.transaction_revenue_total
    - ga_sessions.converions_rate
    - last_fact.converions_rate
    filters:
      ga_sessions.date_period_latest: 'Yes'
      ga_sessions.country: ''
      ga_sessions.campaign: ''
      ga_sessions.period: day
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: visitors_change
      label: Visitors % Change
      expression: "(${ga_sessions.unique_visitors} - ${last_fact.unique_visitors})\
        \ / ${last_fact.unique_visitors}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: returning_visitors_change
      label: Returning Visitors % Change
      expression: "(${ga_sessions.returning_visitors} - ${last_fact.returning_visitors})\
        \ / ${last_fact.returning_visitors}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: session_count_change
      label: Session Count % Change
      expression: "(${ga_sessions.session_count} - ${last_fact.session_count}) / ${last_fact.session_count}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_revenue_change
      label: Total Revenue % Change
      expression: "(${ga_sessions.transaction_revenue_total} - ${last_fact.transaction_revenue_total})\
        \ / ${last_fact.transaction_revenue_total}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: conversion_rate_change
      label: Conversion Rate Change
      expression: "${ga_sessions.converions_rate} - ${last_fact.converions_rate}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    hidden_fields:
    - last_fact.unique_visitors
    - ga_sessions.returning_visitors
    - returning_visitors_change
    - last_fact.returning_visitors
    - visitors_change
    - last_fact.session_count
    - ga_sessions.unique_visitors
    - last_fact.transaction_revenue_total
    - ga_sessions.session_count
    - session_count_change
    - ga_sessions.transaction_revenue_total
    - last_fact.converions_rate
    - total_revenue_change
    series_types: {}
    single_value_title: Conversion Rate
    row: 0
    col: 12
    width: 6
    height: 3
  - name: Conversions
    title: Conversions
    model: event_analytics
    explore: period_fact
    type: single_value
    fields:
    - ga_sessions.unique_visitors
    - last_fact.unique_visitors
    - ga_sessions.returning_visitors
    - last_fact.returning_visitors
    - ga_sessions.session_count
    - last_fact.session_count
    - ga_sessions.transaction_revenue_total
    - last_fact.transaction_revenue_total
    - ga_sessions.converions_rate
    - last_fact.converions_rate
    - last_fact.total_transactions
    - ga_sessions.total_transactions
    filters:
      ga_sessions.date_period_latest: 'Yes'
      ga_sessions.country: ''
      ga_sessions.campaign: ''
      ga_sessions.period: 364 day
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: visitors_change
      label: Visitors % Change
      expression: "(${ga_sessions.unique_visitors} - ${last_fact.unique_visitors})\
        \ / ${last_fact.unique_visitors}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: returning_visitors_change
      label: Returning Visitors % Change
      expression: "(${ga_sessions.returning_visitors} - ${last_fact.returning_visitors})\
        \ / ${last_fact.returning_visitors}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: session_count_change
      label: Session Count % Change
      expression: "(${ga_sessions.session_count} - ${last_fact.session_count}) / ${last_fact.session_count}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_revenue_change
      label: Total Revenue % Change
      expression: "(${ga_sessions.transaction_revenue_total} - ${last_fact.transaction_revenue_total})\
        \ / ${last_fact.transaction_revenue_total}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: conversion_rate_change
      label: Conversion Rate Change
      expression: "${ga_sessions.converions_rate} - ${last_fact.converions_rate}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: transactions_change
      label: Transactions % Change
      expression: "(${ga_sessions.total_transactions} - ${last_fact.total_transactions})\
        \ / ${last_fact.total_transactions}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    hidden_fields:
    - last_fact.unique_visitors
    - ga_sessions.returning_visitors
    - returning_visitors_change
    - last_fact.returning_visitors
    - visitors_change
    - last_fact.session_count
    - ga_sessions.unique_visitors
    - last_fact.transaction_revenue_total
    - ga_sessions.session_count
    - session_count_change
    - ga_sessions.transaction_revenue_total
    - last_fact.converions_rate
    - ga_sessions.converions_rate
    - last_fact.total_transactions
    - conversion_rate_change
    - total_revenue_change
    series_types: {}
    single_value_title: Conversions
    row: 0
    col: 6
    width: 6
    height: 3
  - name: Conversions Over Time
    title: Conversions Over Time
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
      trafficSource.campaign: ''
      ga_sessions.period: 364 day
      ga_sessions.first_time_visitor: ''
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
        __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
        __LINE_NUM: 774
      __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
      __LINE_NUM: 762
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
        __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
        __LINE_NUM: 793
      __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
      __LINE_NUM: 781
    - label:
      orientation: left
      series:
      - id: totals.transactions_count
        name: Transactions Count
        axisId: totals.transactions_count
        __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
        __LINE_NUM: 803
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
      __LINE_NUM: 800
    - label:
      orientation: left
      series:
      - id: totals.transactionRevenue_total
        name: Transaction Revenue Total
        axisId: totals.transactionRevenue_total
        __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
        __LINE_NUM: 822
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
      __LINE_NUM: 819
    - label:
      orientation: left
      series:
      - id: totals.transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
        __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
        __LINE_NUM: 841
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
      __LINE_NUM: 838
    - label:
      orientation: left
      series:
      - id: totals.average_revenue_per_transaction
        name: Average Revenue per Transaction
        axisId: totals.average_revenue_per_transaction
        __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
        __LINE_NUM: 860
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
      __LINE_NUM: 857
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
    row: 3
    col: 0
    width: 24
    height: 10
  - name: Visitors
    title: Visitors
    model: event_analytics
    explore: period_fact
    type: single_value
    fields:
    - ga_sessions.unique_visitors
    - last_fact.unique_visitors
    - ga_sessions.returning_visitors
    - last_fact.returning_visitors
    - ga_sessions.session_count
    - last_fact.session_count
    - ga_sessions.transaction_revenue_total
    - last_fact.transaction_revenue_total
    - ga_sessions.revenue_per_transaction
    - last_fact.revenue_per_transaction
    - ga_sessions.time_on_site_average_per_session
    - last_fact.time_on_site_average_per_session
    - ga_sessions.bounce_rate
    - last_fact.bounce_rate
    filters:
      ga_sessions.date_period_latest: 'Yes'
      ga_sessions.country: ''
      ga_sessions.campaign: ''
      ga_sessions.period: 364 day
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: visitors_change
      label: Visitors % Change
      expression: "(${ga_sessions.unique_visitors} - ${last_fact.unique_visitors})\
        \ / ${last_fact.unique_visitors}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: returning_visitors_change
      label: Returning Visitors % Change
      expression: "(${ga_sessions.returning_visitors} - ${last_fact.returning_visitors})\
        \ / ${last_fact.returning_visitors}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: session_count_change
      label: Session Count % Change
      expression: "(${ga_sessions.session_count} - ${last_fact.session_count}) / ${last_fact.session_count}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_revenue_change
      label: Total Revenue % Change
      expression: "(${ga_sessions.transaction_revenue_total} - ${last_fact.transaction_revenue_total})\
        \ / ${last_fact.transaction_revenue_total}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: revenue_per_transaction_chnage
      label: Revenue Per Transaction Chnage
      expression: "${ga_sessions.revenue_per_transaction} - ${last_fact.revenue_per_transaction}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: time_on_site_avg_per_session_change
      label: Time On Site Avg Per Session % Change
      expression: "(${ga_sessions.time_on_site_average_per_session} - ${last_fact.time_on_site_average_per_session})\
        \ / ${last_fact.time_on_site_average_per_session}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: bounce_rate_change
      label: Bounce Rate Change
      expression: "(${ga_sessions.bounce_rate} - ${last_fact.bounce_rate}) "
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    hidden_fields:
    - last_fact.unique_visitors
    - ga_sessions.returning_visitors
    - returning_visitors_change
    - last_fact.returning_visitors
    - last_fact.session_count
    - last_fact.transaction_revenue_total
    - ga_sessions.transaction_revenue_total
    - total_revenue_change
    - last_fact.revenue_per_transaction
    - last_fact.time_on_site_average_per_session
    - revenue_per_transaction_chnage
    - ga_sessions.revenue_per_transaction
    - last_fact.bounce_rate
    - time_on_site_avg_per_session_change
    - ga_sessions.time_on_site_average_per_session
    - ga_sessions.bounce_rate
    - bounce_rate_change
    - ga_sessions.session_count
    - session_count_change
    series_types: {}
    single_value_title: Visitors
    row: 0
    col: 0
    width: 6
    height: 3
  - name: Top Medium
    title: Top Medium
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
      trafficSource.campaign: ''
      ga_sessions.period: 364 day
      ga_sessions.first_time_visitor: ''
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
      - id: ga_sessions.total_visitors
        name: Total Visitors
        axisId: ga_sessions.total_visitors
      - id: totals.transactions_count
        name: Transactions Count
        axisId: totals.transactions_count
      - id: totals.transactionRevenue_total
        name: Transaction Revenue Total
        axisId: totals.transactionRevenue_total
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
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
    row: 15
    col: 0
    width: 8
    height: 9
  - name: Top Referrers
    title: Top Referrers
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
      trafficSource.campaign: ''
      ga_sessions.period: 364 day
      ga_sessions.first_time_visitor: ''
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
      - id: ga_sessions.total_visitors
        name: Total Visitors
        axisId: ga_sessions.total_visitors
      - id: totals.transactions_count
        name: Transactions Count
        axisId: totals.transactions_count
      - id: totals.transactionRevenue_total
        name: Transaction Revenue Total
        axisId: totals.transactionRevenue_total
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
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
    row: 15
    col: 8
    width: 8
    height: 9
  - name: Top Channels
    title: Top Channels
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
      trafficSource.campaign: ''
      ga_sessions.period: 364 day
      ga_sessions.first_time_visitor: ''
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
      - id: ga_sessions.total_visitors
        name: Total Visitors
        axisId: ga_sessions.total_visitors
      - id: totals.transactions_count
        name: Transactions Count
        axisId: totals.transactions_count
      - id: totals.transactionRevenue_total
        name: Transaction Revenue Total
        axisId: totals.transactionRevenue_total
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
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
    row: 15
    col: 16
    width: 8
    height: 9
  - name: Where are your conversions coming from?
    type: text
    title_text: Where are your conversions coming from?
    row: 13
    col: 0
    width: 24
    height: 2
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
      trafficSource.campaign: ''
      ga_sessions.period: 364 day
      ga_sessions.first_time_visitor: ''
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
        __FILE: app_event_analytics/revenue.dashboard.lookml
        __LINE_NUM: 1520
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/revenue.dashboard.lookml
      __LINE_NUM: 1517
    - label:
      orientation: top
      series:
      - id: average_transaction_revenue
        name: Average Transaction Revenue
        axisId: average_transaction_revenue
        __FILE: app_event_analytics/revenue.dashboard.lookml
        __LINE_NUM: 1535
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/revenue.dashboard.lookml
      __LINE_NUM: 1532
    - label: ''
      orientation: bottom
      series:
      - id: percent_of_visitors_w_transactions
        name: Percent of Visitors w/ Transactions
        axisId: percent_of_visitors_w_transactions
        __FILE: app_event_analytics/revenue.dashboard.lookml
        __LINE_NUM: 1550
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/revenue.dashboard.lookml
      __LINE_NUM: 1547
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
    row: 24
    col: 16
    width: 8
    height: 7
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
      trafficSource.campaign: ''
      ga_sessions.period: 364 day
      ga_sessions.first_time_visitor: ''
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
        __FILE: app_event_analytics/revenue.dashboard.lookml
        __LINE_NUM: 1804
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/revenue.dashboard.lookml
      __LINE_NUM: 1801
    - label:
      orientation: top
      series:
      - id: average_transaction_revenue
        name: Average Transaction Revenue
        axisId: average_transaction_revenue
        __FILE: app_event_analytics/revenue.dashboard.lookml
        __LINE_NUM: 1819
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/revenue.dashboard.lookml
      __LINE_NUM: 1816
    - label: ''
      orientation: bottom
      series:
      - id: percent_of_visitors_w_transactions
        name: Percent of Visitors w/ Transactions
        axisId: percent_of_visitors_w_transactions
        __FILE: app_event_analytics/revenue.dashboard.lookml
        __LINE_NUM: 1834
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/revenue.dashboard.lookml
      __LINE_NUM: 1831
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
    listen: {}
    row: 24
    col: 0
    width: 16
    height: 7
  - name: Which pages and keywords bring the most conversions?
    type: text
    title_text: Which pages and keywords bring the most conversions?
    row: 31
    col: 0
    width: 24
    height: 3
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
      trafficSource.campaign: ''
      ga_sessions.period: 364 day
      ga_sessions.first_time_visitor: ''
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
      - id: totals.transactions_count
        name: Conversions
        axisId: totals.transactions_count
      - id: totals.transactionRevenue_total
        name: Total Value
        axisId: totals.transactionRevenue_total
      - id: totals.average_revenue_per_transaction
        name: Average Revenue per Transaction
        axisId: totals.average_revenue_per_transaction
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: bottom
      series:
      - id: totals.transaction_conversion_rate
        name: Conversion Rate
        axisId: totals.transaction_conversion_rate
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
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
      bold: false
      italic: false
      strikethrough: false
      fields:
      - totals.transactions_count
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Custom
        colors:
        - "#FFFFFF"
        - "#5EC0C4"
      bold: false
      italic: false
      strikethrough: false
      fields:
      - totals.transaction_conversion_rate
    listen: {}
    row: 34
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
      trafficSource.campaign: ''
      ga_sessions.period: 364 day
      ga_sessions.first_time_visitor: ''
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
      - id: totals.transactions_count
        name: Conversions
        axisId: totals.transactions_count
      - id: totals.transactionRevenue_total
        name: Total Value
        axisId: totals.transactionRevenue_total
      - id: totals.average_revenue_per_transaction
        name: Average Revenue per Transaction
        axisId: totals.average_revenue_per_transaction
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: bottom
      series:
      - id: totals.transaction_conversion_rate
        name: Conversion Rate
        axisId: totals.transaction_conversion_rate
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
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
      bold: false
      italic: false
      strikethrough: false
      fields:
      - totals.transactions_count
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Custom
        colors:
        - "#FFFFFF"
        - "#5EC0C4"
      bold: false
      italic: false
      strikethrough: false
      fields:
      - totals.transaction_conversion_rate
    row: 34
    col: 13
    width: 11
    height: 12
