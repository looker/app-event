- dashboard: google_analytics_overview
  extends: event_analytics_dash_base
  title: Google Analytics Overview
  layout: newspaper
  embed_style:
    background_color: "#ffffff"
    title_color: "#3a4245"
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - name: Where should you acquire your users for Engagement?
    type: text
    title_text: Where should you acquire your users for Engagement?
    subtitle_text: ''
    body_text: ''
    row: 9
    col: 0
    width: 24
    height: 3
  - title: Engagement by Traffic Source
    name: Engagement by Traffic Source
    model: event_analytics
    explore: ga_sessions
    type: looker_line
    fields:
    - ga_sessions.channelGrouping
    - totals.avg_pageview_per_user
    - ga_sessions.average_sessions_per_visitor
    - totals.timeonsite_average_per_session
    - ga_sessions.unique_visitors
    filters:
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - ga_sessions.unique_visitors desc
    limit: 8
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
    show_y_axis_labels: false
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
        __LINE_NUM: 70
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 67
    - label:
      orientation: left
      series:
      - id: totals.avg_pageview_per_user
        name: Average Pageviews per User
        axisId: totals.avg_pageview_per_user
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 86
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 83
    - label:
      orientation: left
      series:
      - id: ga_sessions.average_sessions_per_visitor
        name: Average Sessions Ver Visitor
        axisId: ga_sessions.average_sessions_per_visitor
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 102
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 99
    - label:
      orientation: right
      series:
      - id: totals.timeonsite_average_per_session
        name: Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 118
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 115
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
    - ga_sessions.average_sessions_per_visitor
    x_axis_label_rotation: -45
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 12
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
    - ga_sessions.average_sessions_per_visitor
    - totals.timeonsite_average_per_session
    - ga_sessions.unique_visitors
    - trafficSource.medium
    filters:
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - ga_sessions.unique_visitors desc
    limit: 8
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
    show_y_axis_labels: false
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
        __LINE_NUM: 206
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 203
    - label:
      orientation: left
      series:
      - id: totals.avg_pageview_per_user
        name: Average Pageviews per User
        axisId: totals.avg_pageview_per_user
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 222
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 219
    - label:
      orientation: left
      series:
      - id: ga_sessions.average_sessions_per_visitor
        name: Average Sessions Ver Visitor
        axisId: ga_sessions.average_sessions_per_visitor
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 238
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 235
    - label:
      orientation: right
      series:
      - id: totals.timeonsite_average_per_session
        name: Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 254
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 251
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
    - ga_sessions.average_sessions_per_visitor
    x_axis_label_rotation: -45
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 12
    col: 8
    width: 8
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
    filters:
      ga_sessions.date_period_latest: 'Yes'
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
        __LINE_NUM: 355
      bold: false
      italic: false
      strikethrough: false
      fields:
      - ga_sessions.session_count
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 350
    series_labels:
      ga_sessions.visitStart_hour_of_day: Hour of Day
      ga_sessions.visitStart_day_of_week: Day of Week
    note_state: collapsed
    note_display: above
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 25
    col: 0
    width: 12
    height: 13
  - title: Engagement by Referrals
    name: Engagement by Referrals
    model: event_analytics
    explore: ga_sessions
    type: looker_line
    fields:
    - trafficSource.referralPath
    - totals.avg_pageview_per_user
    - ga_sessions.average_sessions_per_visitor
    - totals.timeonsite_average_per_session
    - ga_sessions.unique_visitors
    filters:
      trafficSource.referralPath: "-NULL"
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - ga_sessions.unique_visitors desc
    limit: 7
    column_limit: 50
    dynamic_fields:
    - table_calculation: referral_path
      label: Referral Path
      expression: substring(${trafficSource.referralPath},0,15)
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
        __LINE_NUM: 441
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 438
    - label:
      orientation: left
      series:
      - id: totals.avg_pageview_per_user
        name: Average Pageviews per User
        axisId: totals.avg_pageview_per_user
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 457
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 454
    - label:
      orientation: left
      series:
      - id: ga_sessions.average_sessions_per_visitor
        name: Average Sessions Ver Visitor
        axisId: ga_sessions.average_sessions_per_visitor
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 473
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 470
    - label:
      orientation: right
      series:
      - id: totals.timeonsite_average_per_session
        name: Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 489
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 486
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
    - ga_sessions.average_sessions_per_visitor
    hidden_fields:
    - trafficSource.referralPath
    x_axis_label_rotation: -45
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 12
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
    filters:
      ga_sessions.date_period_latest: 'Yes'
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
        __LINE_NUM: 591
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 588
    - label: ''
      orientation: bottom
      series:
      - id: totals.transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 607
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 604
    - label:
      orientation: bottom
      series:
      - id: ga_sessions.unique_visitors
        name: Unique Visitors
        axisId: ga_sessions.unique_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 623
      showLabels: true
      showValues: true
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 620
    - label:
      orientation: bottom
      series:
      - id: totals.average_revenue_per_user
        name: Average Revenue per User
        axisId: totals.average_revenue_per_user
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 639
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 636
    colors:
    - 'palette: Fuchsia to Green'
    series_colors:
      ga_sessions.unique_visitors: "#286f0f"
    hidden_series:
    - totals.transaction_conversion_rate
    - totals.average_revenue_per_user
    x_axis_label_rotation: -45
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 40
    col: 12
    width: 12
    height: 14
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
    filters:
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - ga_sessions.unique_visitors desc
    limit: 10
    column_limit: 50
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
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
        __LINE_NUM: 721
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 718
    - label:
      orientation: bottom
      series:
      - id: ga_sessions.unique_visitors
        name: Unique Visitors
        axisId: ga_sessions.unique_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 737
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: custom
      tickDensityCustom: 3
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 734
    - label: ''
      orientation: bottom
      series:
      - id: totals.timeonsite_average_per_session
        name: Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 753
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 750
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
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 40
    col: 0
    width: 12
    height: 14
  - title: Time Series
    name: Time Series
    model: event_analytics
    explore: ga_sessions
    type: looker_line
    fields:
    - ga_sessions.visitStart_date
    - ga_sessions.session_count
    - totals.timeonsite_average_per_session
    - ga_sessions.unique_visitors
    - ga_sessions.first_time_visitors
    - totals.transaction_conversion_rate
    fill_fields:
    - ga_sessions.visitStart_date
    filters:
      ga_sessions.date_period_latest: 'Yes'
    sorts:
    - ga_sessions.visitStart_date desc
    limit: 364
    column_limit: 50
    dynamic_fields:
    - table_calculation: percent_new_visitors
      label: Percent New Visitors
      expression: "${ga_sessions.first_time_visitors}/${ga_sessions.session_count}"
      value_format:
      value_format_name: percent_1
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
    show_comparison_label: false
    series_types: {}
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: ga_sessions.unique_visitors
        name: Unique Visitors
        axisId: ga_sessions.unique_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 851
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 848
    - label:
      orientation: left
      series:
      - id: ga_sessions.returning_visitors
        name: Returning Visitors
        axisId: ga_sessions.returning_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 867
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 864
    - label:
      orientation: left
      series:
      - id: ga_sessions.session_count
        name: Session Count
        axisId: ga_sessions.session_count
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 883
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 880
    - label:
      orientation: left
      series:
      - id: totals.timeonsite_average_per_session
        name: Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 899
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 896
    - label: ''
      orientation: left
      series:
      - id: percent_new_visitors
        name: Percent New Visitors
        axisId: percent_new_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 915
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 912
    - label:
      orientation: right
      series:
      - id: totals.transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 930
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 927
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
    - ga_sessions.first_time_visitors
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 2
    col: 0
    width: 24
    height: 7
  - name: What content is performing best?
    type: text
    title_text: What content is performing best?
    row: 38
    col: 0
    width: 24
    height: 2
  - title: Sessions
    name: Sessions
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
        __LINE_NUM: 1079
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1076
    - label:
      orientation: left
      series:
      - id: ga_sessions.returning_visitors
        name: Returning Visitors
        axisId: ga_sessions.returning_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1095
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1092
    - label:
      orientation: left
      series:
      - id: ga_sessions.session_count
        name: Session Count
        axisId: ga_sessions.session_count
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1111
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1108
    - label:
      orientation: left
      series:
      - id: totals.timeonsite_average_per_session
        name: Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1127
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1124
    - label: ''
      orientation: left
      series:
      - id: percent_new_visitors
        name: Percent New Visitors
        axisId: percent_new_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1143
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1140
    - label:
      orientation: right
      series:
      - id: totals.transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1158
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1155
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
    - totals.timeonsite_average_per_session
    - ga_sessions.unique_visitors
    - ga_sessions.returning_visitors
    - totals.transaction_conversion_rate
    - totals.bounce_rate
    - avg_duration
    - users
    - returning_users
    - conversion_rate
    - bounce_rate
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 0
    col: 0
    width: 4
    height: 2
  - title: Avg Duration
    name: Avg Duration
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
        __LINE_NUM: 1309
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1306
    - label:
      orientation: left
      series:
      - id: ga_sessions.returning_visitors
        name: Returning Visitors
        axisId: ga_sessions.returning_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1325
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1322
    - label:
      orientation: left
      series:
      - id: ga_sessions.session_count
        name: Session Count
        axisId: ga_sessions.session_count
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1341
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1338
    - label:
      orientation: left
      series:
      - id: totals.timeonsite_average_per_session
        name: Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
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
    - label: ''
      orientation: left
      series:
      - id: percent_new_visitors
        name: Percent New Visitors
        axisId: percent_new_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1373
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1370
    - label:
      orientation: right
      series:
      - id: totals.transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1388
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1385
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
    - ga_sessions.unique_visitors
    - ga_sessions.returning_visitors
    - totals.transaction_conversion_rate
    - totals.bounce_rate
    - users
    - returning_users
    - conversion_rate
    - bounce_rate
    - ga_sessions.session_count
    - sessions
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 0
    col: 4
    width: 4
    height: 2
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
        __LINE_NUM: 1539
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1536
    - label:
      orientation: left
      series:
      - id: ga_sessions.returning_visitors
        name: Returning Visitors
        axisId: ga_sessions.returning_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1555
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1552
    - label:
      orientation: left
      series:
      - id: ga_sessions.session_count
        name: Session Count
        axisId: ga_sessions.session_count
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1571
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1568
    - label:
      orientation: left
      series:
      - id: totals.timeonsite_average_per_session
        name: Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1587
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1584
    - label: ''
      orientation: left
      series:
      - id: percent_new_visitors
        name: Percent New Visitors
        axisId: percent_new_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1603
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1600
    - label:
      orientation: right
      series:
      - id: totals.transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1618
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1615
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
    - ga_sessions.returning_visitors
    - totals.transaction_conversion_rate
    - totals.bounce_rate
    - returning_users
    - conversion_rate
    - bounce_rate
    - ga_sessions.session_count
    - sessions
    - totals.timeonsite_average_per_session
    - avg_duration
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 0
    col: 8
    width: 4
    height: 2
  - title: Returning Users
    name: Returning Users
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
        __LINE_NUM: 1769
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1766
    - label:
      orientation: left
      series:
      - id: ga_sessions.returning_visitors
        name: Returning Visitors
        axisId: ga_sessions.returning_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1785
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1782
    - label:
      orientation: left
      series:
      - id: ga_sessions.session_count
        name: Session Count
        axisId: ga_sessions.session_count
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1801
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1798
    - label:
      orientation: left
      series:
      - id: totals.timeonsite_average_per_session
        name: Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1817
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1814
    - label: ''
      orientation: left
      series:
      - id: percent_new_visitors
        name: Percent New Visitors
        axisId: percent_new_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1833
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1830
    - label:
      orientation: right
      series:
      - id: totals.transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 1848
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1845
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
    - ga_sessions.unique_visitors
    - users
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 0
    col: 12
    width: 4
    height: 2
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
        __LINE_NUM: 1999
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 1996
    - label:
      orientation: left
      series:
      - id: ga_sessions.returning_visitors
        name: Returning Visitors
        axisId: ga_sessions.returning_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 2015
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 2012
    - label:
      orientation: left
      series:
      - id: ga_sessions.session_count
        name: Session Count
        axisId: ga_sessions.session_count
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 2031
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 2028
    - label:
      orientation: left
      series:
      - id: totals.timeonsite_average_per_session
        name: Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 2047
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 2044
    - label: ''
      orientation: left
      series:
      - id: percent_new_visitors
        name: Percent New Visitors
        axisId: percent_new_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 2063
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 2060
    - label:
      orientation: right
      series:
      - id: totals.transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 2078
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 2075
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
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 0
    col: 16
    width: 4
    height: 2
  - title: Bounce Rate
    name: Bounce Rate
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
    comparison_reverse_colors: true
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
        __LINE_NUM: 2229
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 2226
    - label:
      orientation: left
      series:
      - id: ga_sessions.returning_visitors
        name: Returning Visitors
        axisId: ga_sessions.returning_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 2245
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 2242
    - label:
      orientation: left
      series:
      - id: ga_sessions.session_count
        name: Session Count
        axisId: ga_sessions.session_count
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 2261
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 2258
    - label:
      orientation: left
      series:
      - id: totals.timeonsite_average_per_session
        name: Time On Site Average Per Session
        axisId: totals.timeonsite_average_per_session
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 2277
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 2274
    - label: ''
      orientation: left
      series:
      - id: percent_new_visitors
        name: Percent New Visitors
        axisId: percent_new_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 2293
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 2290
    - label:
      orientation: right
      series:
      - id: totals.transaction_conversion_rate
        name: Transaction Conversion Rate
        axisId: totals.transaction_conversion_rate
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 2308
      showLabels: false
      showValues: false
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 2305
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
    - ga_sessions.session_count
    - sessions
    - totals.timeonsite_average_per_session
    - avg_duration
    - ga_sessions.unique_visitors
    - users
    - ga_sessions.returning_visitors
    - returning_users
    - totals.transaction_conversion_rate
    - conversion_rate
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 0
    col: 20
    width: 4
    height: 2
  - title: How Often do Users Come Back?
    name: How Often do Users Come Back?
    model: event_analytics
    explore: ga_sessions
    type: looker_column
    fields:
    - ga_sessions.unique_visitors
    - ga_sessions.visitnumber
    filters:
      ga_sessions.date_period_latest: 'Yes'
    limit: 7
    column_limit: 5
    stacking: ''
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
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    y_axes:
    - label: ''
      orientation: left
      series:
      - id: ga_sessions.unique_visitors
        name: Unique Visitors
        axisId: ga_sessions.unique_visitors
        __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
        __LINE_NUM: 2399
      showLabels: true
      showValues: false
      unpinAxis: false
      tickDensity: default
      type: linear
      __FILE: app_event_analytics/google_analytics_overview.dashboard.lookml
      __LINE_NUM: 2396
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Number of Visits
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_dropoff: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    note_state: collapsed
    note_display: above
    listen:
      Period: ga_sessions.period
      Campaign: trafficSource.campaign
      First Time Visitor: ga_sessions.first_time_visitor
      Country: geoNetwork.country
    row: 25
    col: 12
    width: 12
    height: 13
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
