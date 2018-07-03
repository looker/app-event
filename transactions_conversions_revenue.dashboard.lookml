- dashboard: transactions_conversions_and_revenue
  extends: event_analytics_dash_base
  title: Transactions, Conversions, and Revenue
  embed_style:
    background_color: "#ffffff"
    title_color: "#3a4245"
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - name: How are Conversion Rates and Revenue figures affected by session length,
      frequency, and acquisition source?
    type: text
    title_text: How are Conversion Rates and Revenue figures affected by session length,
      frequency, and acquisition source?
    row: 30
    col: 0
    width: 24
    height: 2
  - title: Avg Revenue Per Transaction
    name: Avg Revenue Per Transaction
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
    col: 12
    width: 4
    height: 3
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
    col: 4
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
    col: 8
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
    col: 16
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
    col: 20
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
        __LINE_NUM: 696
      __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
      __LINE_NUM: 684
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
        __LINE_NUM: 715
      __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
      __LINE_NUM: 703
    - label:
      orientation: left
      series:
      - id: totals.transactions_count
        name: Transactions Count
        axisId: totals.transactions_count
        __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
        __LINE_NUM: 725
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
      __LINE_NUM: 722
    - label:
      orientation: left
      series:
      - id: totals.transactionRevenue_total
        name: Transaction Revenue Total
        axisId: totals.transactionRevenue_total
        __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
        __LINE_NUM: 744
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
      __LINE_NUM: 741
    - label:
      orientation: left
      series:
      - id: totals.transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
        __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
        __LINE_NUM: 763
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
      __LINE_NUM: 760
    - label:
      orientation: left
      series:
      - id: totals.average_revenue_per_transaction
        name: Average Revenue per Transaction
        axisId: totals.average_revenue_per_transaction
        __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
        __LINE_NUM: 782
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
      __LINE_NUM: 779
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
  - title: Top Keywords by Revenue
    name: Top Keywords by Revenue
    model: event_analytics
    explore: ga_sessions
    type: looker_line
    fields:
    - trafficSource.keyword
    - ga_sessions.total_visitors
    - totals.transactions_count
    - totals.transactionRevenue_total
    filters:
      trafficSource.keyword: "-NULL"
      totals.transactionRevenue_total: ">0"
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - totals.transactionRevenue_total desc
    limit: 5
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
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
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
    show_null_points: true
    point_style: circle
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    series_types:
      totals.transactionRevenue_total: column
      total_transaction_revenue: column
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
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
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
        __LINE_NUM: 987
      __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
      __LINE_NUM: 975
    - label: Transaction Revenue
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: total_transaction_revenue
        name: Total Transaction Revenue
        axisId: total_transaction_revenue
        __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
        __LINE_NUM: 1006
      __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
      __LINE_NUM: 994
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: average_transaction_revenue
        name: Average Transaction Revenue
        axisId: average_transaction_revenue
        __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
        __LINE_NUM: 1025
      __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
      __LINE_NUM: 1013
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
    x_axis_reversed: false
    y_axis_reversed: false
    listen:
      Campaign: trafficSource.campaign
      Period: ga_sessions.period
      First Time Visitor: ga_sessions.first_time_visitor
    row: 12
    col: 0
    width: 12
    height: 9
  - title: Top Acquisition Sources by Revenue
    name: Top Acquisition Sources by Revenue
    model: event_analytics
    explore: ga_sessions
    type: looker_line
    fields:
    - trafficSource.source
    - ga_sessions.session_count
    - totals.transactions_count
    - totals.transactionRevenue_total
    filters:
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - ga_sessions.session_count desc
    limit: 5
    column_limit: 50
    dynamic_fields:
    - table_calculation: transaction_conversion_rate
      label: Transaction Conversion Rate
      expression: "${totals.transactions_count}/${ga_sessions.session_count}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: avg_revenue_per_transaction
      label: Avg Revenue per Transaction
      expression: "${totals.transactionRevenue_total}/${totals.transactions_count}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_transaction_revenue
      label: Total Transaction Revenue
      expression: "${totals.transactionRevenue_total}"
      value_format:
      value_format_name: usd
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/New_York
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
    show_null_points: true
    point_style: circle
    interpolation: monotone
    value_labels: legend
    label_type: labPer
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      total_transaction_revenue: column
    inner_radius: 50
    hidden_fields:
    - ga_sessions.session_count
    - totals.transactions_count
    - totals.transactionRevenue_total
    series_colors: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: transaction_conversion_rate
        __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
        __LINE_NUM: 1139
      __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
      __LINE_NUM: 1127
    - label: Transaction Revenue
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat: "$#"
      series:
      - id: total_transaction_revenue
        name: Total Transaction Revenue
        axisId: total_transaction_revenue
        __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
        __LINE_NUM: 1158
      __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
      __LINE_NUM: 1146
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat: "$#"
      series:
      - id: avg_revenue_per_transaction
        name: Avg Revenue per Transaction
        axisId: avg_revenue_per_transaction
        __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
        __LINE_NUM: 1177
      __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
      __LINE_NUM: 1165
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
    x_axis_reversed: false
    y_axis_reversed: false
    listen:
      Campaign: trafficSource.campaign
      Period: ga_sessions.period
      First Time Visitor: ga_sessions.first_time_visitor
    row: 12
    col: 12
    width: 12
    height: 9
  - title: Revenue and Conversion Rate by Session Length
    name: Revenue and Conversion Rate by Session Length
    model: event_analytics
    explore: ga_sessions
    type: looker_line
    fields:
    - totals.timeonsite_tier
    - totals.transaction_conversion_rate
    - totals.average_revenue_per_transaction
    - totals.transactionRevenue_total
    filters:
      totals.timeonsite_tier: "-Undefined"
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - totals.timeonsite_tier
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
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
    show_null_points: true
    point_style: circle
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      total_transaction_revenue: column
      totals.transactionRevenue_total: column
    series_colors: {}
    hidden_fields: []
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: totals.transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
        __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
        __LINE_NUM: 1414
      __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
      __LINE_NUM: 1402
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: totals.transactionRevenue_total
        name: Transaction Revenue Total
        axisId: totals.transactionRevenue_total
        __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
        __LINE_NUM: 1433
      __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
      __LINE_NUM: 1421
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: totals.average_revenue_per_transaction
        name: Average Revenue per Transaction
        axisId: totals.average_revenue_per_transaction
        __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
        __LINE_NUM: 1452
      __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
      __LINE_NUM: 1440
    x_axis_reversed: false
    y_axis_reversed: false
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
    row: 21
    col: 0
    width: 12
    height: 9
  - title: Revenue Conversion Rate by Visit Tier
    name: Revenue Conversion Rate by Visit Tier
    model: event_analytics
    explore: ga_sessions
    type: looker_line
    fields:
    - ga_sessions.visitnumbertier
    - totals.transactions_count
    - totals.transactionRevenue_total
    - ga_sessions.session_count
    filters:
      ga_sessions.visitnumbertier: "-Below 1"
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - ga_sessions.visitnumbertier
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: transaction_conversion_rate
      label: Transaction Conversion Rate
      expression: "${totals.transactions_count}/${ga_sessions.session_count}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: avg_revenue_per_transaction
      label: Avg Revenue per Transaction
      expression: "${totals.transactionRevenue_total}/${totals.transactions_count}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_transaction_revenue
      label: Total Transaction Revenue
      expression: "${totals.transactionRevenue_total}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/New_York
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
    show_null_points: true
    point_style: circle
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      revenue: column
      total_transaction_revenue: column
    hidden_fields:
    - totals.transactions_count
    - totals.transactionRevenue_total
    - ga_sessions.session_count
    series_colors: {}
    y_axes:
    - label:
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: transaction_conversion_rate
        __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
        __LINE_NUM: 1566
      __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
      __LINE_NUM: 1554
    - label: Transaction Revenue
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: total_transaction_revenue
        name: Total Transaction Revenue
        axisId: total_transaction_revenue
        __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
        __LINE_NUM: 1585
      __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
      __LINE_NUM: 1573
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: avg_revenue_per_transaction
        name: Avg Revenue per Transaction
        axisId: avg_revenue_per_transaction
        __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
        __LINE_NUM: 1604
      __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
      __LINE_NUM: 1592
    hidden_series:
    - average_time_on_site_per_session
    - average_pageview_per_session
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
    x_axis_reversed: false
    y_axis_reversed: false
    listen:
      Campaign: trafficSource.campaign
      Period: ga_sessions.period
      First Time Visitor: ga_sessions.first_time_visitor
    row: 21
    col: 12
    width: 12
    height: 9
  - title: Revenue and Conversion Rate by First Page Visited
    name: Revenue and Conversion Rate by First Page Visited
    model: event_analytics
    explore: ga_sessions
    type: looker_line
    fields:
    - ga_sessions.session_count
    - totals.transactions_count
    - totals.transactionRevenue_total
    - first_page.pageTitle
    filters:
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - ga_sessions.session_count desc
    limit: 10
    column_limit: 50
    dynamic_fields:
    - table_calculation: transaction_conversion_rate
      label: Transaction Conversion Rate
      expression: "${totals.transactions_count}/${ga_sessions.session_count}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: avg_revenue_per_transaction
      label: Avg Revenue per Transaction
      expression: "${totals.transactionRevenue_total}/${totals.transactions_count}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_transaction_revenue
      label: Total Transaction Revenue
      expression: "${totals.transactionRevenue_total}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
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
    show_null_points: true
    point_style: circle
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - ga_sessions.session_count
    - totals.transactions_count
    - totals.transactionRevenue_total
    series_types:
      total_transaction_revenue: column
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: transaction_conversion_rate
        __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
        __LINE_NUM: 1286
      __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
      __LINE_NUM: 1274
    - label: Transaction Revenue
      maxValue:
      minValue:
      orientation: right
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: avg_revenue_per_transaction
        name: Avg Revenue per Transaction
        axisId: avg_revenue_per_transaction
        __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
        __LINE_NUM: 1305
      __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
      __LINE_NUM: 1293
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: total_transaction_revenue
        name: Total Transaction Revenue
        axisId: total_transaction_revenue
        __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
        __LINE_NUM: 1324
      __FILE: app_event_analytics/transactions_conversions_revenue.dashboard.lookml
      __LINE_NUM: 1312
    series_colors: {}
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
    x_axis_reversed: false
    y_axis_reversed: false
    listen:
      Campaign: trafficSource.campaign
      Period: ga_sessions.period
      First Time Visitor: ga_sessions.first_time_visitor
    row: 32
    col: 0
    width: 24
    height: 9
  - title: First Page Visited (Full Detail)
    name: First Page Visited (Full Detail)
    model: event_analytics
    explore: ga_sessions
    type: table
    fields:
    - first_page.pageTitle
    - ga_sessions.session_count
    - totals.page_views_session
    - totals.pageviews_total
    - totals.timeonsite_average_per_session
    - ga_sessions.unique_visitors
    - totals.transactions_count
    - totals.transactionRevenue_total
    filters:
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - totals.transactionRevenue_total desc
    limit: 10
    column_limit: 50
    dynamic_fields:
    - table_calculation: transaction_conversion_rate
      label: Transaction Conversion Rate
      expression: "${totals.transactions_count}/${ga_sessions.session_count}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_transaction_revenue
      label: Total Transaction Revenue
      expression: "${totals.transactionRevenue_total}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    font_size: '12'
    series_types: {}
    hidden_fields:
    - totals.transactionRevenue_total
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Campaign: trafficSource.campaign
      Period: ga_sessions.period
      First Time Visitor: ga_sessions.first_time_visitor
    row: 41
    col: 0
    width: 24
    height: 6
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
