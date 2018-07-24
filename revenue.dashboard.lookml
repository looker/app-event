- dashboard: revenue
  title: revenue
  layout: newspaper
  embed_style:
    background_color: "#ffffff"
    title_color: "#3a4245"
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - title: Total Sessions
    name: Total Sessions
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
    - visitors_change
    - last_fact.session_count
    - ga_sessions.unique_visitors
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
    series_types: {}
    listen:
      Campaign: ga_sessions.campaign
      Period: ga_sessions.period
    row: 0
    col: 0
    width: 4
    height: 3
  - title: Total Transactions
    name: Total Transactions
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
    listen:
      Campaign: ga_sessions.campaign
      Period: ga_sessions.period
    row: 0
    col: 8
    width: 4
    height: 3
  - title: Conversion Rate
    name: Conversion Rate
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
    listen:
      Campaign: ga_sessions.campaign
      Period: ga_sessions.period
    row: 0
    col: 12
    width: 4
    height: 3
  - title: Revenue
    name: Revenue
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
    filters:
      ga_sessions.date_period_latest: 'Yes'
      ga_sessions.country: ''
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
    series_types: {}
    listen:
      Campaign: ga_sessions.campaign
      Period: ga_sessions.period
    row: 0
    col: 20
    width: 4
    height: 3
  - title: Unique Visitors
    name: Unique Visitors
    model: event_analytics
    explore: period_fact
    type: single_value
    fields:
    - ga_sessions.unique_visitors
    - last_fact.unique_visitors
    - last_fact.returning_visitors
    - ga_sessions.returning_visitors
    filters:
      ga_sessions.date_period_latest: 'Yes'
      ga_sessions.country: ''
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
    - last_fact.returning_visitors
    - ga_sessions.returning_visitors
    - returning_visitors_change
    series_types: {}
    listen:
      Campaign: ga_sessions.campaign
      Period: ga_sessions.period
    row: 0
    col: 4
    width: 4
    height: 3
  - title: Time Series
    name: Time Series
    model: event_analytics
    explore: ga_sessions
    type: looker_line
    fields:
    - ga_sessions.total_visitors
    - totals.transactions_count
    - totals.transactionRevenue_total
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
    show_x_axis_label: true
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
    series_labels: {}
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
    listen:
      Campaign: trafficSource.campaign
      Period: ga_sessions.period
      First Time Visitor: ga_sessions.first_time_visitor
    row: 3
    col: 0
    width: 24
    height: 9
  - title: Top Selling Products
    name: Top Selling Products
    model: event_analytics
    explore: ga_sessions
    type: looker_bar
    fields:
    - hits_product.v2ProductName
    - totals.transaction_conversion_rate
    - totals.transactions_count
    - totals.average_revenue_per_transaction
    - hits_product.total_product_revenue
    sorts:
    - hits_product.total_product_revenue desc
    limit: 10
    column_limit: 50
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
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
    series_types:
      totals.transaction_conversion_rate: line
      totals.transactions_count: line
      totals.average_revenue_per_transaction: line
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: totals.transaction_conversion_rate
        name: Session Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: bottom
      series:
      - id: totals.average_revenue_per_transaction
        name: Session Average Revenue per Transaction
        axisId: totals.average_revenue_per_transaction
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: bottom
      series:
      - id: totals.transactions_count
        name: Session Transactions Count
        axisId: totals.transactions_count
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: bottom
      series:
      - id: hits_product.total_product_revenue
        name: 'Session: Hits: Product Total Product Revenue'
        axisId: hits_product.total_product_revenue
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    hidden_series:
    - totals.transactions_count
    - totals.average_revenue_per_transaction
    row: 34
    col: 0
    width: 12
    height: 11
  - name: Where is your revenue coming from?
    type: text
    title_text: Where is your revenue coming from?
    row: 12
    col: 0
    width: 24
    height: 2
  - name: Which products are performing best?
    type: text
    title_text: Which products are performing best?
    row: 32
    col: 0
    width: 24
    height: 2
  - title: Revenue by Channel
    name: Revenue by Channel
    model: event_analytics
    explore: ga_sessions
    type: looker_bar
    fields:
    - ga_sessions.total_visitors
    - totals.transactions_count
    - totals.transactionRevenue_total
    - ga_sessions.channelGrouping
    filters:
      trafficSource.keyword: "-NULL"
      totals.transactionRevenue_total: ">0"
      ga_sessions.date_period_latest: 'Yes'
      trafficSource.campaign: ''
      ga_sessions.period: 364 day
      ga_sessions.first_time_visitor: ''
    sorts:
    - totals.transactionRevenue_total desc
    limit: 10
    column_limit: 50
    dynamic_fields:
    - table_calculation: percent_of_visitors_w_transactions
      label: Percent of Visitors w/ Transactions
      expression: "${totals.transactions_count}/${ga_sessions.total_visitors}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: average_transaction_revenue
      label: Average Transaction Revenue
      expression: "${total_transaction_revenue}/${totals.transactions_count}"
      value_format:
      value_format_name: usd
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_transaction_revenue
      label: Total Transaction Revenue
      expression: "${totals.transactionRevenue_total}"
      value_format:
      value_format_name: usd
      _kind_hint: measure
      _type_hint: number
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
    series_types:
      average_transaction_revenue: line
      percent_of_visitors_w_transactions: line
    y_axis_labels: []
    hidden_series: []
    y_axis_orientation:
    - left
    - right
    hidden_fields:
    - ga_sessions.total_visitors
    - totals.transactions_count
    - totals.transactionRevenue_total
    series_colors: {}
    series_labels: {}
    y_axes:
    - label: Transaction Revenue
      orientation: top
      series:
      - id: total_transaction_revenue
        name: Total Transaction Revenue
        axisId: total_transaction_revenue
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
      orientation: top
      series:
      - id: average_transaction_revenue
        name: Average Transaction Revenue
        axisId: average_transaction_revenue
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label: ''
      orientation: bottom
      series:
      - id: percent_of_visitors_w_transactions
        name: Percent of Visitors w/ Transactions
        axisId: percent_of_visitors_w_transactions
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
    listen: {}
    row: 14
    col: 0
    width: 8
    height: 10
  - title: Revenue by Medium
    name: Revenue by Medium
    model: event_analytics
    explore: ga_sessions
    type: looker_bar
    fields:
    - ga_sessions.total_visitors
    - totals.transactions_count
    - totals.transactionRevenue_total
    - trafficSource.medium
    filters:
      trafficSource.keyword: "-NULL"
      totals.transactionRevenue_total: ">0"
      ga_sessions.date_period_latest: 'Yes'
      trafficSource.campaign: ''
      ga_sessions.period: 364 day
      ga_sessions.first_time_visitor: ''
    sorts:
    - totals.transactionRevenue_total desc
    limit: 10
    column_limit: 50
    dynamic_fields:
    - table_calculation: percent_of_visitors_w_transactions
      label: Percent of Visitors w/ Transactions
      expression: "${totals.transactions_count}/${ga_sessions.total_visitors}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: average_transaction_revenue
      label: Average Transaction Revenue
      expression: "${total_transaction_revenue}/${totals.transactions_count}"
      value_format:
      value_format_name: usd
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_transaction_revenue
      label: Total Transaction Revenue
      expression: "${totals.transactionRevenue_total}"
      value_format:
      value_format_name: usd
      _kind_hint: measure
      _type_hint: number
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
    series_types:
      average_transaction_revenue: line
      percent_of_visitors_w_transactions: line
    y_axis_labels: []
    hidden_series: []
    y_axis_orientation:
    - left
    - right
    hidden_fields:
    - ga_sessions.total_visitors
    - totals.transactions_count
    - totals.transactionRevenue_total
    series_colors: {}
    series_labels: {}
    y_axes:
    - label: Transaction Revenue
      orientation: top
      series:
      - id: total_transaction_revenue
        name: Total Transaction Revenue
        axisId: total_transaction_revenue
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
      orientation: top
      series:
      - id: average_transaction_revenue
        name: Average Transaction Revenue
        axisId: average_transaction_revenue
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label: ''
      orientation: bottom
      series:
      - id: percent_of_visitors_w_transactions
        name: Percent of Visitors w/ Transactions
        axisId: percent_of_visitors_w_transactions
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
    listen: {}
    row: 14
    col: 8
    width: 8
    height: 10
  - title: Revenue by Referrer
    name: Revenue by Referrer
    model: event_analytics
    explore: ga_sessions
    type: looker_bar
    fields:
    - ga_sessions.total_visitors
    - totals.transactions_count
    - totals.transactionRevenue_total
    - trafficSource.referralPath
    filters:
      trafficSource.keyword: "-NULL"
      totals.transactionRevenue_total: ">0"
      ga_sessions.date_period_latest: 'Yes'
      trafficSource.campaign: ''
      ga_sessions.period: 364 day
      ga_sessions.first_time_visitor: ''
    sorts:
    - totals.transactionRevenue_total desc
    limit: 10
    column_limit: 50
    dynamic_fields:
    - table_calculation: percent_of_visitors_w_transactions
      label: Percent of Visitors w/ Transactions
      expression: "${totals.transactions_count}/${ga_sessions.total_visitors}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: average_transaction_revenue
      label: Average Transaction Revenue
      expression: "${total_transaction_revenue}/${totals.transactions_count}"
      value_format:
      value_format_name: usd
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_transaction_revenue
      label: Total Transaction Revenue
      expression: "${totals.transactionRevenue_total}"
      value_format:
      value_format_name: usd
      _kind_hint: measure
      _type_hint: number
    - table_calculation: referrer
      label: Referrer
      expression: substring(${trafficSource.referralPath},0,16)
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
    series_types:
      average_transaction_revenue: line
      percent_of_visitors_w_transactions: line
    y_axis_labels: []
    hidden_series: []
    y_axis_orientation:
    - left
    - right
    hidden_fields:
    - ga_sessions.total_visitors
    - totals.transactions_count
    - totals.transactionRevenue_total
    - trafficSource.referralPath
    series_colors: {}
    series_labels: {}
    y_axes:
    - label: Transaction Revenue
      orientation: top
      series:
      - id: total_transaction_revenue
        name: Total Transaction Revenue
        axisId: total_transaction_revenue
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
      orientation: top
      series:
      - id: average_transaction_revenue
        name: Average Transaction Revenue
        axisId: average_transaction_revenue
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label: ''
      orientation: bottom
      series:
      - id: percent_of_visitors_w_transactions
        name: Percent of Visitors w/ Transactions
        axisId: percent_of_visitors_w_transactions
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
    listen: {}
    row: 14
    col: 16
    width: 8
    height: 10
  - title: Avg Trans Rev
    name: Avg Trans Rev
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
    listen:
      Campaign: ga_sessions.campaign
      Period: ga_sessions.period
    row: 0
    col: 16
    width: 4
    height: 3
  - title: Revenue by Device
    name: Revenue by Device
    model: event_analytics
    explore: ga_sessions
    type: looker_pie
    fields:
    - device.isMobile
    - totals.transactionRevenue_total
    filters:
      trafficSource.keyword: "-NULL"
      totals.transactionRevenue_total: ">0"
      ga_sessions.date_period_latest: 'Yes'
      trafficSource.campaign: ''
      ga_sessions.period: 364 day
      ga_sessions.first_time_visitor: ''
    sorts:
    - totals.transactionRevenue_total desc
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
      orientation: top
      series:
      - id: average_transaction_revenue
        name: Average Transaction Revenue
        axisId: average_transaction_revenue
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label: ''
      orientation: bottom
      series:
      - id: percent_of_visitors_w_transactions
        name: Percent of Visitors w/ Transactions
        axisId: percent_of_visitors_w_transactions
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
    row: 24
    col: 16
    width: 8
    height: 8
  - title: Top Products Full Detail
    name: Top Products Full Detail
    model: event_analytics
    explore: ga_sessions
    type: table
    fields:
    - hits_product.v2ProductName
    - ga_sessions.session_count
    - totals.transactions_count
    - totals.transaction_conversion_rate
    - hits_product.total_product_revenue
    - hits_product.v2ProductCategory
    - hits_product.productBrand
    sorts:
    - hits_product.total_product_revenue desc
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
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
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
    series_types: {}
    y_axes:
    - label: ''
      orientation: bottom
      series:
      - id: totals.transaction_conversion_rate
        name: Session Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: bottom
      series:
      - id: totals.average_revenue_per_transaction
        name: Session Average Revenue per Transaction
        axisId: totals.average_revenue_per_transaction
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: bottom
      series:
      - id: totals.transactions_count
        name: Session Transactions Count
        axisId: totals.transactions_count
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label:
      orientation: bottom
      series:
      - id: hits_product.total_product_revenue
        name: 'Session: Hits: Product Total Product Revenue'
        axisId: hits_product.total_product_revenue
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    hidden_series:
    - totals.transactions_count
    - totals.average_revenue_per_transaction
    conditional_formatting:
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
      fields:
      - totals.transaction_conversion_rate
    - type: low to high
      value:
      background_color:
      font_color:
      palette:
        name: Red to Yellow to Green
        colors:
        - "#F36254"
        - "#FCF758"
        - "#4FBC89"
      bold: false
      italic: false
      strikethrough: false
      fields:
      - hits_product.total_product_revenue
    listen: {}
    row: 34
    col: 12
    width: 12
    height: 11
  - title: Revenue by Geography
    name: Revenue by Geography
    model: event_analytics
    explore: ga_sessions
    type: looker_map
    fields:
    - totals.transactionRevenue_total
    - geoNetwork.country
    filters:
      trafficSource.keyword: "-NULL"
      totals.transactionRevenue_total: ">0"
      ga_sessions.date_period_latest: 'Yes'
      trafficSource.campaign: ''
      ga_sessions.period: 364 day
      ga_sessions.first_time_visitor: ''
    sorts:
    - totals.transactionRevenue_total desc
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
      orientation: top
      series:
      - id: average_transaction_revenue
        name: Average Transaction Revenue
        axisId: average_transaction_revenue
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
    - label: ''
      orientation: bottom
      series:
      - id: percent_of_visitors_w_transactions
        name: Percent of Visitors w/ Transactions
        axisId: percent_of_visitors_w_transactions
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
    map_latitude: 46.292866664344295
    map_longitude: 14.942779541015627
    map_zoom: 2
    row: 24
    col: 0
    width: 16
    height: 8
  filters:
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
  - name: Period
    title: Period
    type: field_filter
    default_value: day
    allow_multiple_values: true
    required: false
    model: event_analytics
    explore: ga_sessions
    listens_to_filters: []
    field: ga_sessions.period
  - name: First Time Visitor
    title: First Time Visitor
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: event_analytics
    explore: ga_sessions
    listens_to_filters: []
    field: ga_sessions.first_time_visitor
  - name: Property
    title: Property
    type: string_filter
    default_value: All Websites
    allow_multiple_values: true
    required: false
