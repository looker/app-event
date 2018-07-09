- dashboard: bounce_rates
  extends: event_analytics_dash_base
  title: Bounce Rates
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
      Period: ga_sessions.period
      Campaign: ga_sessions.campaign
    row: 0
    col: 0
    width: 5
    height: 3
  - title: Sessions Per Visitor
    name: Sessions Per Visitor
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
    - ga_sessions.bounces
    - last_fact.bounces
    - ga_sessions.first_time_visitors
    - last_fact.first_time_visitors
    - ga_sessions.total_visitors
    - last_fact.total_visitors
    - last_fact.avg_sessions_per_visitor
    - ga_sessions.avg_sessions_per_visitor
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
    - table_calculation: bounces_change
      label: Bounces % Change
      expression: "(${ga_sessions.bounces} - ${last_fact.bounces}) / ${ga_sessions.bounces}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: first_time_visitors_change
      label: First Time Visitors % Change
      expression: "(${ga_sessions.first_time_visitors} - ${last_fact.first_time_visitors})\
        \ / ${last_fact.first_time_visitors}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: total_visitors_change
      label: Total Visitors % Change
      expression: "(${ga_sessions.total_visitors} - ${last_fact.total_visitors}) /\
        \ ${last_fact.total_visitors}"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      _type_hint: number
    - table_calculation: avg_sessions_per_visitor_change
      label: Avg Sessions per Visitor % Change
      expression: "(${ga_sessions.avg_sessions_per_visitor} - ${last_fact.avg_sessions_per_visitor})\
        \ / ${last_fact.avg_sessions_per_visitor}"
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
    - visitors_change
    - last_fact.session_count
    - ga_sessions.unique_visitors
    - last_fact.transaction_revenue_total
    - ga_sessions.session_count
    - session_count_change
    - ga_sessions.transaction_revenue_total
    - total_revenue_change
    - last_fact.revenue_per_transaction
    - last_fact.time_on_site_average_per_session
    - revenue_per_transaction_chnage
    - ga_sessions.revenue_per_transaction
    - ga_sessions.time_on_site_average_per_session
    - last_fact.bounces
    - time_on_site_avg_per_session_change
    - ga_sessions.bounces
    - bounces_change
    - returning_visitors_change
    - last_fact.first_time_visitors
    - ga_sessions.returning_visitors
    - last_fact.total_visitors
    - first_time_visitors_change
    - ga_sessions.first_time_visitors
    - ga_sessions.total_visitors
    - last_fact.avg_sessions_per_visitor
    - total_visitors_change
    series_types: {}
    listen:
      Period: ga_sessions.period
      Campaign: ga_sessions.campaign
    row: 0
    col: 10
    width: 5
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
      Period: ga_sessions.period
      Campaign: ga_sessions.campaign
    row: 0
    col: 5
    width: 5
    height: 3
  - title: Total Bounces
    name: Total Bounces
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
    - ga_sessions.bounces
    - last_fact.bounces
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
    - table_calculation: bounces_change
      label: Bounces % Change
      expression: "(${ga_sessions.bounces} - ${last_fact.bounces}) / ${ga_sessions.bounces}"
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
    - total_revenue_change
    - last_fact.revenue_per_transaction
    - last_fact.time_on_site_average_per_session
    - revenue_per_transaction_chnage
    - ga_sessions.revenue_per_transaction
    - ga_sessions.time_on_site_average_per_session
    - last_fact.bounces
    - time_on_site_avg_per_session_change
    series_types: {}
    listen:
      Period: ga_sessions.period
      Campaign: ga_sessions.campaign
    row: 0
    col: 15
    width: 5
    height: 3
  - title: Bounce Rate
    name: Bounce Rate
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
    - ga_sessions.session_count
    - session_count_change
    - ga_sessions.transaction_revenue_total
    - total_revenue_change
    - last_fact.revenue_per_transaction
    - last_fact.time_on_site_average_per_session
    - revenue_per_transaction_chnage
    - ga_sessions.revenue_per_transaction
    - last_fact.bounce_rate
    - time_on_site_avg_per_session_change
    - ga_sessions.time_on_site_average_per_session
    series_types: {}
    listen:
      Period: ga_sessions.period
      Campaign: ga_sessions.campaign
    row: 0
    col: 20
    width: 4
    height: 3
  - title: Bounces by Browser
    name: Bounces by Browser
    model: event_analytics
    explore: ga_sessions
    type: looker_line
    fields:
    - device.browser
    - totals.bounce_rate
    - ga_sessions.session_count
    filters:
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - ga_sessions.session_count desc
    limit: 5
    column_limit: 50
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: false
    show_y_axis_ticks: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: monotone
    query_timezone: America/New_York
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    series_types:
      totals.bounces_total: column
      ga_sessions.session_count: column
    label_color: []
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: ga_sessions.session_count
        name: Session Count
        axisId: ga_sessions.session_count
        __FILE: app_event_analytics/bounce_rates.dashboard.lookml
        __LINE_NUM: 71
      __FILE: app_event_analytics/bounce_rates.dashboard.lookml
      __LINE_NUM: 59
    - label: ''
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
      - id: totals.bounce_rate
        name: Bounce Rate
        axisId: totals.bounce_rate
        __FILE: app_event_analytics/bounce_rates.dashboard.lookml
        __LINE_NUM: 90
      __FILE: app_event_analytics/bounce_rates.dashboard.lookml
      __LINE_NUM: 78
    series_colors: {}
    colors:
    - "#FF666C"
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
    x_axis_reversed: false
    y_axis_reversed: false
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 3
    col: 0
    width: 13
    height: 8
  - title: Bounces by Visitor Frequency
    name: Bounces by Visitor Frequency
    model: event_analytics
    explore: ga_sessions
    type: looker_line
    fields:
    - ga_sessions.visitnumbertier
    - totals.bounce_rate
    - ga_sessions.session_count
    filters:
      ga_sessions.visitnumbertier: "-Below 1"
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - ga_sessions.visitnumbertier
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: true
    label_density: 7
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: false
    show_y_axis_ticks: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: monotone
    query_timezone: America/New_York
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types:
      totals.bounces_total: column
      ga_sessions.session_count: column
    series_labels: {}
    label_color: []
    y_axes:
    - label:
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: ga_sessions.session_count
        name: Session Session Count
        axisId: ga_sessions.session_count
        __FILE: app_event_analytics/bounce_rates.dashboard.lookml
        __LINE_NUM: 539
      __FILE: app_event_analytics/bounce_rates.dashboard.lookml
      __LINE_NUM: 527
    - label: ''
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
      - id: totals.bounce_rate
        name: Session Bounce Rate
        axisId: totals.bounce_rate
        __FILE: app_event_analytics/bounce_rates.dashboard.lookml
        __LINE_NUM: 558
      __FILE: app_event_analytics/bounce_rates.dashboard.lookml
      __LINE_NUM: 546
    series_colors: {}
    colors:
    - "#FF666C"
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
    x_axis_reversed: false
    y_axis_reversed: false
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 3
    col: 13
    width: 11
    height: 8
  - title: New vs Returning Bounce Totals
    name: New vs Returning Bounce Totals
    model: event_analytics
    explore: ga_sessions
    type: looker_pie
    fields:
    - ga_sessions.first_time_visitor
    - totals.bounces_total
    fill_fields:
    - ga_sessions.first_time_visitor
    filters:
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - ga_sessions.first_time_visitor
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    value_labels: labels
    label_type: labVal
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: false
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    series_types: {}
    y_axis_unpin: true
    series_labels:
      No - Session Bounce Rate: Return Visitor Bounce Rate
      Yes - Session Bounce Rate: First Time Visitor Bounce Rate
    series_colors: {}
    colors:
    - "#5EC0C4"
    - "#B9E49A"
    - "#FDCB6C"
    - "#F6659A"
    - "#BFBFBF"
    - "#7DC06A"
    - "#D0A997"
    - "#8696B8"
    - "#C5D4B2"
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 11
    col: 0
    width: 11
    height: 8
  - title: New vs Returning User Bounce Rates
    name: New vs Returning User Bounce Rates
    model: event_analytics
    explore: ga_sessions
    type: looker_column
    fields:
    - totals.bounce_rate
    - ga_sessions.first_time_visitor
    pivots:
    - ga_sessions.first_time_visitor
    fill_fields:
    - ga_sessions.first_time_visitor
    filters:
      ga_sessions.visitnumbertier: "-Below 1"
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - totals.bounce_rate desc 0
    - ga_sessions.first_time_visitor
    limit: 500
    column_limit: 50
    query_timezone: America/New_York
    stacking: ''
    show_value_labels: false
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    colors:
    - "#5EC0C4"
    - "#B9E49A"
    - "#FDCB6C"
    - "#F6659A"
    - "#BFBFBF"
    - "#7DC06A"
    - "#D0A997"
    - "#8696B8"
    - "#C5D4B2"
    x_axis_reversed: false
    y_axis_reversed: false
    series_colors: {}
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 11
    col: 11
    width: 13
    height: 8
  - title: Bounces by Keyword Acquisition
    name: Bounces by Keyword Acquisition
    model: event_analytics
    explore: ga_sessions
    type: looker_line
    fields:
    - totals.bounce_rate
    - ga_sessions.session_count
    - trafficSource.keyword
    filters:
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - ga_sessions.session_count desc
    limit: 5
    column_limit: 50
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: false
    show_y_axis_ticks: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: monotone
    query_timezone: America/New_York
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    series_types:
      totals.bounces_total: column
      ga_sessions.session_count: column
    label_color: []
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: ga_sessions.session_count
        name: Session Count
        axisId: ga_sessions.session_count
        __FILE: app_event_analytics/bounce_rates.dashboard.lookml
        __LINE_NUM: 247
      __FILE: app_event_analytics/bounce_rates.dashboard.lookml
      __LINE_NUM: 235
    - label: ''
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
      - id: totals.bounce_rate
        name: Bounce Rate
        axisId: totals.bounce_rate
        __FILE: app_event_analytics/bounce_rates.dashboard.lookml
        __LINE_NUM: 266
      __FILE: app_event_analytics/bounce_rates.dashboard.lookml
      __LINE_NUM: 254
    series_colors: {}
    colors:
    - "#FF666C"
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
    x_axis_reversed: false
    y_axis_reversed: false
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 19
    col: 0
    width: 13
    height: 7
  - title: Bounces by Source Acquisition
    name: Bounces by Source Acquisition
    model: event_analytics
    explore: ga_sessions
    type: looker_line
    fields:
    - totals.bounce_rate
    - ga_sessions.session_count
    - trafficSource.source
    filters:
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - ga_sessions.session_count desc
    limit: 5
    column_limit: 50
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: false
    show_y_axis_labels: false
    show_y_axis_ticks: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: monotone
    query_timezone: America/New_York
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    series_types:
      totals.bounces_total: column
      ga_sessions.session_count: column
    label_color: []
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: ga_sessions.session_count
        name: Session Count
        axisId: ga_sessions.session_count
        __FILE: app_event_analytics/bounce_rates.dashboard.lookml
        __LINE_NUM: 348
      showLabels: true
      showValues: true
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: log
      __FILE: app_event_analytics/bounce_rates.dashboard.lookml
      __LINE_NUM: 345
    - label: ''
      orientation: right
      series:
      - id: totals.bounce_rate
        name: Bounce Rate
        axisId: totals.bounce_rate
        __FILE: app_event_analytics/bounce_rates.dashboard.lookml
        __LINE_NUM: 367
      showLabels: false
      showValues: false
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/bounce_rates.dashboard.lookml
      __LINE_NUM: 364
    series_colors: {}
    colors:
    - "#FF666C"
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
    x_axis_reversed: false
    y_axis_reversed: false
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 19
    col: 13
    width: 11
    height: 7
  - title: Bounces and Rate by Page Path
    name: Bounces and Rate by Page Path
    model: event_analytics
    explore: ga_sessions
    type: looker_bar
    fields:
    - first_page.pagePath
    - totals.bounce_rate
    - ga_sessions.session_count
    filters:
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - ga_sessions.session_count desc
    limit: 10
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
    y_axis_combined: false
    show_y_axis_labels: false
    show_y_axis_ticks: false
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
    show_null_points: true
    point_style: circle
    interpolation: monotone
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    series_types:
      totals.bounce_rate: line
    label_color: []
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: totals.bounce_rate
        name: Bounce Rate
        axisId: totals.bounce_rate
        __FILE: app_event_analytics/bounce_rates.dashboard.lookml
        __LINE_NUM: 648
      __FILE: app_event_analytics/bounce_rates.dashboard.lookml
      __LINE_NUM: 636
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: custom
      tickDensityCustom: '4'
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: ga_sessions.session_count
        name: Session Count
        axisId: ga_sessions.session_count
        __FILE: app_event_analytics/bounce_rates.dashboard.lookml
        __LINE_NUM: 667
      __FILE: app_event_analytics/bounce_rates.dashboard.lookml
      __LINE_NUM: 655
    series_colors: {}
    colors:
    - "#FF666C"
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
    x_axis_reversed: false
    y_axis_reversed: false
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 26
    col: 0
    width: 11
    height: 13
  - title: Top Performing Articles (Full Detail)
    name: Top Performing Articles (Full Detail)
    model: event_analytics
    explore: ga_sessions
    type: table
    fields:
    - hits_page.pageTitle
    - ga_sessions.session_count
    - totals.bounces_total
    - totals.bounce_rate
    - totals.timeonsite_average_per_session
    - ga_sessions.unique_visitors
    - ga_sessions.returning_visitors
    - ga_sessions.total_visitors
    - totals.transactions_count
    - totals.transactionRevenue_total
    filters:
      hits_page.pageTitle: "-NULL"
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - ga_sessions.session_count desc
    limit: 10
    column_limit: 50
    query_timezone: America/New_York
    show_view_names: true
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
    y_axis_combined: true
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
    series_types: {}
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
    row: 26
    col: 11
    width: 13
    height: 13
  filters:
  - name: Period
    title: Period
    type: field_filter
    default_value: 364 day
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
